require_relative '../a_serikov_hw_03_t_03'

describe 'task3' do
  context 'log has two events with call core' do
    let(:logs) do
      <<~LOGS
        2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - Calling core with action: event
        2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
        2018-04-23 17:17:49.8 ubuntu-xenial[14319] Debug - docker event processed
        2018-04-23 17:18:19.5 ubuntu-xenial[14319] Debug - monitoring grid communication health
        2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - Calling core with action: messages
        2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
        2018-04-23 17:18:59.8 ubuntu-xenial[14319] Debug - inside docker_handle_event
      LOGS
    end

    it 'return a string duration of the action in SECONDS between core call events' do
      expect(task3(logs)).to eql('49.1')
    end
  end

  context 'log has four events with call core' do
    let(:logs) do
      <<~LOGS
        2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - Calling core with action: event
        2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
        2018-04-23 17:17:49.8 ubuntu-xenial[14319] Debug - docker event processed
        2018-04-23 17:18:19.5 ubuntu-xenial[14319] Debug - monitoring grid communication health
        2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - Calling core with action: messages
        2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
        2018-04-23 17:18:59.8 ubuntu-xenial[14319] Debug - Calling core with action: event2
        2018-04-23 17:20:00.8 ubuntu-xenial[14319] Debug - inside docker_handle_event
        2018-04-23 17:21:38.8 ubuntu-xenial[14319] Debug - Calling core with action: messages2
      LOGS
    end

    it 'return a string duration of the action in SECONDS between core call events' do
      expect(task3(logs)).to eql(["49.1", "21.0", "159.0"])
    end
  end

  context 'there is no event with the call core in the log' do
    let(:logs) do
      <<~LOGS
        2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
        2018-04-23 17:17:49.8 ubuntu-xenial[14319] Debug - docker event processed
        2018-04-23 17:18:19.5 ubuntu-xenial[14319] Debug - monitoring grid communication health
        2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
        2018-04-23 17:18:59.8 ubuntu-xenial[14319] Debug - inside docker_handle_event
      LOGS
    end

    it "return '0'" do
      result = task3(logs)
      expect(result).to eql('0')
    end
  end
end
