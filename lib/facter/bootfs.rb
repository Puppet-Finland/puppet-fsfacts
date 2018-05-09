Facter.add(:has_bootfs) do
  confine :kernel do |value|
    value != 'windows'
  end
  setcode do
    if Facter.value(:mountpoints)['/boot'].nil?
      false
    else
      true
    end
  end
end

if Facter.value(:has_bootfs)
  facts = %w[size available]

  facts.each do |fact|
    Facter.add("bootfs_#{fact}") do
      setcode do
        Facter.value(:mountpoints)['/boot'][fact]
      end
    end
  end
end
