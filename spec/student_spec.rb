require 'rspec'
require './lib/student'

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new('Penelope')
      expect(student).to be_a Student
    end

    it 'has a name' do
      student = Student.new('Penelope')
      expect(student.name).to eq 'Penelope'
    end

    it 'assigns a default name' do
      student = Student.new(42)
      expect(student.name).to eq 'Default Name Assigned'
    end

    it 'has cookies by default' do
      student = Student.new('Penelope')
      expect(student.cookies).to eq []
    end
  end

  describe '#add_cookie' do
    it 'adds cookie to cookies array' do
      student = Student.new('Penelope')
      student.add_cookie('Chocolate Chip')
      student.add_cookie('Snickerdoodle')

      expect(student.cookies).to eq(['Chocolate Chip', 'Snickerdoodle'])
    end
  end
end
