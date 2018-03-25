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

      context "possible moves of KNIGHT" do
        it "Should return possible moves for d2 position" do
          expect(Chess::Game.possible_moves("KNIGHT","d2")).to eq("b1,f1,b3,f3,c4,e4")
        end

        it "Should return possible moves for c3 position" do
          expect(Chess::Game.possible_moves("KNIGHT","c3")).to eq("a2,e2,a4,e4,b5,d5,d1,b1")
        end

        context "Checking for 4 corners" do
          it "Should return possible moves for a1 position" do
            expect(Chess::Game.possible_moves("KNIGHT","a1")).to eq("c2,b3")
          end

          it "Should return possible moves for h8 position" do
            expect(Chess::Game.possible_moves("KNIGHT","h8")).to eq("f7,g6")
          end

          it "Should return possible moves for a8 position" do
            expect(Chess::Game.possible_moves("KNIGHT","a8")).to eq("c7,b6")
          end

          it "Should return possible moves for h1 position" do
            expect(Chess::Game.possible_moves("KNIGHT","h1")).to eq("f2,g3")
          end
        end

      end


    end


  end

end