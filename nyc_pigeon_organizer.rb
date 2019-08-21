def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, values|
    data[attribute].each do |value, names|
      p value
      names.each do |name|
        if pigeon_list.has_key?(name)
          pigeon_list[name][attribute].push(value.to_s)
          p value.to_s
        else
          pigeon_list[name] = {
              :color => [],
              :gender => [],
              :lives => []
          }
          redo
        end
      end
    end
  end
  pigeon_list
end