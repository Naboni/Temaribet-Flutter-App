import 'package:flutter/material.dart';
import 'package:temaribet/model/lecture.dart';
import 'package:temaribet/model/note.dart';

class Topics with ChangeNotifier {
  List<Note> _notes = [
    Note(
      id: "1",
      noteTopics: "Atomic Structure",
      noteContent: [
        "Atomic Structure",
        "An atom is the smallest unit of matter that retains all of the chemical properties of an element. Atoms combine to form molecules, which then interact to form solids, gases, or liquids. For example, water is composed of hydrogen and oxygen atoms that have combined to form water molecules. Many biological processes are devoted to breaking down molecules into their component atoms so they can be reassembled into a more useful molecule.",
        "Atomic Particles",
        "Atoms consist of three basic particles: protons, electrons, and neutrons. The nucleus (center) of the atom contains the protons (positively charged) and the neutrons (no charge). The outermost regions of the atom are called electron shells and contain the electrons (negatively charged). Atoms have different properties based on the arrangement and number of their basic particles.",
        "Atomic Mass",
        "Protons and neutrons have approximately the same mass, about 1.67 × 10-24 grams. Scientists define this amount of mass as one atomic mass unit (amu) or one Dalton. Although similar in mass, protons are positively charged, while neutrons have no charge. Therefore, the number of neutrons in an atom contributes significantly to its mass, but not to its charge.",
        "Volume of Atoms",
        "Accounting for the sizes of protons, neutrons, and electrons, most of the volume of an atom—greater than 99 percent—is, in fact, empty space. Despite all this empty space, solid objects do not just pass through one another. The electrons that surround all atoms are negatively charged and cause atoms to repel one another, preventing atoms from occupying the same space. These intermolecular forces prevent you from falling through an object like your chair.",
        "Atomic Number",
        "Neutral atoms of an element contain an equal number of protons and electrons. The number of protons determines an element’s atomic number (Z) and distinguishes one element from another. For example, carbon’s atomic number (Z) is 6 because it has 6 protons. The number of neutrons can vary to produce isotopes, which are atoms of the same element that have different numbers of neutrons. The number of electrons can also be different in atoms of the same element, thus producing ions (charged atoms). For instance, iron, Fe, can exist in its neutral state, or in the +2 and +3  ionic states.",
        "Mass Number",
        "An element’s mass number (A) is the sum of the number of protons and the number of neutrons. The small contribution of mass from electrons is disregarded in calculating the mass number. This approximation of mass can be used to easily calculate how many neutrons an element has by simply subtracting the number of protons from the mass number. Protons and neutrons both weigh about one atomic mass unit or amu. Isotopes of the same element will have the same atomic number but different mass numbers.",
      ],
      courseId: "4",
    ),
    Note(
      id: "2",
      noteTopics: "Electrochemistry",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "4",
    ),
    Note(
      id: "3",
      noteTopics: "Units and Measurement",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "4",
    ),
    Note(
      id: "4",
      noteTopics: "Thermochemistry",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "4",
    ),
    Note(
      id: "5",
      noteTopics: "Chemical Bonding",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "4",
    ),
    Note(
      id: "6",
      noteTopics: "Periodic Table",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "4",
    ),
    Note(
      id: "7",
      noteTopics: "Equations and Stoichiometry",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "4",
    ),
    Note(
      id: "8",
      noteTopics: "Solutions and Mixtures",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "4",
    ),
    Note(
      id: "9",
      noteTopics: "Kinematics: The Physics of Motion",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "2",
    ),
    Note(
      id: "10",
      noteTopics: "Dynamics: Forces and Motion",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "2",
    ),
    Note(
      id: "11",
      noteTopics: "Impulse and Momentum",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "2",
    ),
    Note(
      id: "12",
      noteTopics: "Conservation of Energy",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "2",
    ),
    Note(
      id: "13",
      noteTopics: "Periodic and Simple Harmonic Motion",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "2",
    ),
    Note(
      id: "14",
      noteTopics: "Heat and Temperature",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "2",
    ),
    Note(
      id: "15",
      noteTopics: "Wave Energy",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "2",
    ),
    Note(
      id: "16",
      noteTopics: "Electricity and Electrical Energy",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "2",
    ),
    Note(
      id: "17",
      noteTopics: "Magnetism and Magnetic Force",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "2",
    ),
    Note(
      id: "18",
      noteTopics: "Electromagnetism and Electromagnets",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "2",
    ),
    Note(
      id: "19",
      noteTopics: "Nature and Behavior of Light",
      noteContent: [
        "Introduction",
        "Electrochemistry is the study of chemical processes that cause electrons to move. This movement of electrons is called electricity, which can be generated by movements of electrons from one element to another in a reaction known as an oxidation-reduction (\"redox\") reaction.",
        "Cell EMF",
        "The electromotive force (EMF) is the maximum potential difference between two electrodes of a galvanic or voltaic cell. This quantity is related to the tendency for an element, a compound or an ion to acquire (i.e. gain) or release (lose) electrons.",
        "Electrolysis",
        "Chemical reactions in batteries or galvanic cells provide the driving force for electrons to struggle through loads. This is how chemical energy is transformed into electric energy. Electrolysis can be carried out in solutions or molten salts (liquid). Because the atoms and ions have to move physically, the medium has to be a fluid. The products, like the reactants in a galvanic cell, can be in a solid, liquid, or gas state.",
        "Half-Cell Reaction",
        "A half cell is one of the two electrodes in a galvanic cell or simple battery. For example, in the Zn−Cu battery, the two half cells make an oxidizing-reducing couple. Placing a piece of reactant in an electrolyte solution makes a half cell. Unless it is connected to another half cell via an electric conductor and salt bridge, no reaction will take place in a half cell.",
        "Nernst Equation",
        "Electrochemistry deals with cell potential as well as energy of chemical reactions. The energy of a chemical system drives the charges to move, and the driving force gives rise to the cell potential of a system called galvanic cell. The energy aspect is also related to the chemical equilibrium. All these relationships are tied together in the concept of the Nernst equation.",
      ],
      courseId: "2",
    ),
  ];
  List<Note> get notes {
    return [..._notes];
  }

  Note findById(String id) {
    return _notes.firstWhere((element) => element.id == id);
  }

  Iterable<Note> findByNoteId(String id) {
    return _notes.where((element) => element.courseId == id);
  }

  void addNote() {
    // _notes.add(value);
    notifyListeners();
  }
}
