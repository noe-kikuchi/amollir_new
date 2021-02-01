FactoryBot.define do
  factory :karute do
    pain             { '膝' }
    illness          { '糖尿病' }
    history          { '菊地病院' }
    medicine         { '高血圧の薬' }
    habit            { '片方に体重をかける' }
    memo             { '猫背' }
    date             { '2021-01-25' }
    patient_id       { '1' }  
  end
end
