json.revisions @revisions do |json, revision|
    json.(revision , :id, :nbItem, :created_at)
    json.search_engines revision.search_engines do |search_engine|
        json.id search_engine.id
        json.name search_engine.name
        json.url search_engine.url
        json.country search_engine.country
        json.url_ldpi full_icon(search_engine.icon_url(:ldpi))
        json.url_mdpi full_icon(search_engine.icon_url(:mdpi))
        json.url_hdpi full_icon(search_engine.icon_url(:hdpi))
        json.url_xhdpi full_icon(search_engine.icon_url(:xhdpi))
    end
end