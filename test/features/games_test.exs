defmodule Chess.GamesTest do
  use Chess.FeatureCase

  test "visit homepage" do
    navigate_to "/"
    find_element(:css, "body")

    assert title_text == "Chess"
  end

  test "can create a new game" do
    navigate_to "/"
    create_game

    assert page_has_chess_board
  end

  test "can move a piece" do
    navigate_to "/"
    create_game

    click({:css, "#f4-r1"})

    assert has_class?({:css, "#f4-r1"}, "selected")
    assert square_has_piece("f4-r1", "white", "pawn")

    click({:css, "#f4-r3"})

    assert !square_has_piece("f4-r1", "white", "pawn")
    assert square_has_piece("f4-r3", "white", "pawn")
  end

  defp create_game do
    click({:css, "form.create-game button[type='submit']"})
  end

  defp title_text do
    find_element(:css, "header h1") |> visible_text
  end

  defp page_has_chess_board do
    element_displayed?({:css, ".board"})
  end

  defp square_has_piece(square, colour, piece) do
    has_class?({:css, "##{square}"}, colour) &&
      has_class?({:css, "##{square}"}, piece)
  end
end
