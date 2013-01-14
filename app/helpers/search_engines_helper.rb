module SearchEnginesHelper

  def full_icon(path)
    request.protocol+request.host_with_port+path.to_s
  end

end
