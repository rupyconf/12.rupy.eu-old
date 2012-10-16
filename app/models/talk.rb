class Talk

  delegate :talk, :talk_description, to: :@schedule, allow_nil: true

  alias_attribute :title, :talk
  alias_attribute :description, :talk_description

  def initialize(speaker)
    @schedule = Schedule.where('speaker1_id = :speaker_id OR speaker2_id = :speaker_id', speaker_id: speaker.id).first
  end

  def available?
    @schedule.present?
  end

end