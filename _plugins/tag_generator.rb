# Jekyll Plugin for Tag Pages Generation
# Courtesy of https://www.untangled.dev/2020/06/02/tag-management-jekyll/

Jekyll::Hooks.register :posts, :post_write do |post|
    all_existing_tags = Dir.entries("_featured_tags")
    .map { |t| t.match(/(.*).md/) }
    .compact.map { |m| m[1] }

    tags = post['tags'].reject { |t| t.empty? }
    tags.each do |tag|
        generate_tag_file(tag) if !all_existing_tags.include?(tag)
    end
end

def generate_tag_file(tag)
    # generate tag file
    File.open("_featured_tags/#{tag}.md", "wb") do |file|
        file << "---\nlayout: list\ntag-name: #{tag}\n---\n"
    end
    # generate feed file
    File.open("feeds-by-tag/#{tag}.xml", "wb") do |file|
        file << "---\nlayout: feeds\ntag-name: #{tag}\n---\n"
    end
end
