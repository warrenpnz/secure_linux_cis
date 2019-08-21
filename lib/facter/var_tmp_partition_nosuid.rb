# frozen_string_literal: true

# var_tmp_partition_nosuid.rb
# Ensures the nosuid option exists on the /var/tmp partition

Facter.add('var_tmp_partition_nosuid') do
  confine osfamily: 'RedHat'
  # rubocop:disable Style/StringLiterals
  setcode do
    parsed = Facter::Core::Execution.exec("mount | grep \"/var/tmp\"")
    # rubocop:enable Style/StringLiterals
    if parsed.match?(%r{nosuid})
      true
    else
      false
    end
  end
end
