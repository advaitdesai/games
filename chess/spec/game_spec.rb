require '../chess/game'

RSpec::Expectations.configuration.on_potential_false_positives = :nothing

describe Chess::Game do
  describe ".possible_moves" do
    describe "Input validation" do
      context "Invalid inputs" do
        it "Should return error" do
          expect{Chess::Game.possible_moves(nil,nil)}.to raise_error(InputError)
        end

        it "Should return error" do
          expect{Chess::Game.possible_moves("x","3")}.to raise_error(InputError)
        end

        it "Should return error" do
          expect{Chess::Game.possible_moves("KNIGHT","d9")}.to raise_error(InputError)
        end

        it "Should return error" do
          expect{Chess::Game.possible_moves("abc","d3")}.to raise_error(InputError)
        end

        it "Should return error" do
          expect{Chess::Game.possible_moves("abc","x3")}.to raise_error(InputError)
        end

        it " Should return error" do
          expect{Chess::Game.possible_moves("KNIGHT","dddd3")}.to raise_error(InputError)
        end

        it "Should return error" do
          expect{Chess::Game.possible_moves("KNIGHT","d")}.to raise_error(InputError)
        end
      end

      context "valid input" do
        it "Should not return error" do
          expect{Chess::Game.possible_moves("KNIGHT","d3")}.to_not raise_error(InputError)
        end

        it "Should not return error" do
          expect{Chess::Game.possible_moves("rook","d3")}.to_not raise_error(InputError)
        end

        it "Should not return error" do
          expect{Chess::Game.possible_moves("rook","D3")}.to_not raise_error(InputError)
        end
      end
    end


  end

end