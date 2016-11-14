import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

const store = new Vuex.Store({
  state: {
    board: [
      [
        { type: "rook",   colour: "black" },
        { type: "knight", colour: "black" },
        { type: "bishop", colour: "black" },
        { type: "queen",  colour: "black" },
        { type: "king",   colour: "black" },
        { type: "bishop", colour: "black" },
        { type: "knight", colour: "black" },
        { type: "rook",   colour: "black" },
      ],
      [
        { type: "pawn", colour: "black" },
        { type: "pawn", colour: "black" },
        { type: "pawn", colour: "black" },
        { type: "pawn", colour: "black" },
        { type: "pawn", colour: "black" },
        { type: "pawn", colour: "black" },
        { type: "pawn", colour: "black" },
        { type: "pawn", colour: "black" },
      ],
      [null, null, null, null, null, null, null, null],
      [null, null, null, null, null, null, null, null],
      [null, null, null, null, null, null, null, null],
      [null, null, null, null, null, null, null, null],
      [
        { type: "pawn", colour: "white" },
        { type: "pawn", colour: "white" },
        { type: "pawn", colour: "white" },
        { type: "pawn", colour: "white" },
        { type: "pawn", colour: "white" },
        { type: "pawn", colour: "white" },
        { type: "pawn", colour: "white" },
        { type: "pawn", colour: "white" },
      ],
      [
        { type: "rook",   colour: "white" },
        { type: "knight", colour: "white" },
        { type: "bishop", colour: "white" },
        { type: "queen",  colour: "white" },
        { type: "king",   colour: "white" },
        { type: "bishop", colour: "white" },
        { type: "knight", colour: "white" },
        { type: "rook",   colour: "white" },
      ],
    ],
  },
  getters: {
    chessBoard: state => {
    },
  },
  mutations: {
  }
});

export default store;
