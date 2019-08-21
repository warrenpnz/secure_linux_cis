# frozen_string_literal: true

# var_tmp_partition.rb
# Ensures a seperate partition exists for /var/tmp

Facter.add('var_tmp_partition') do
  confine osfamily: 'RedHat'
  setcode do
    # rubocop:disable Style/StringLiterals
    Facter::Core::Execution.exec("mount | grep \"/var/tmp\"")
    # rubocop:enable Style/StringLiterals
  end
end
