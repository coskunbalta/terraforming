module Terraforming::Resource
  class DBParameterGroup
    def self.tf(client = Aws::RDS::Client.new)
      # TODO: fetch parameter (describe-db-parameters)
      ERB.new(open(Terraforming.template_path("tf/db_parameter_group")).read, nil, "-").result(binding)
    end

    def self.tfstate(data)
      # TODO: implement DBParameterGroup.tfstate
      raise NotImplementedError
    end
  end
end
