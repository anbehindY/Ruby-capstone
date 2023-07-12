module LabelModule
  def list_labels
    puts 'No labels found' if @labels.empty?
    @labels.each do |label|
      print label.title
      print ', ' unless label == @labels.last
    end
  end
end
