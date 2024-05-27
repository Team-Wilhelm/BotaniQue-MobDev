import 'dart:math';

List<String> plantFacts = [
  "Some plants can defend themselves from predators.",
  "Bamboo is the fastest-growing plant.",
  "Some plants can communicate with each other.",
  "The world's oldest plant is over 5,000 years old.",
  "Some plants can 'hear' running water.",
  "The largest flower in the world is the Rafflesia arnoldii.",
  "Some plants can recognize their siblings.",
  "The smell of freshly cut grass is a plant distress call.",
  "Some plants can grow in metal-rich soils.",
  "The Venus flytrap can count.",
  "Some plants can survive without sunlight.",
  "The Amazon rainforest produces 20% of the world's oxygen.",
  "Some plants can help clean indoor air.",
  "The world's tallest tree is over 379 feet tall.",
  "Some plants can live in extreme environments.",
  "The world's smallest flowering plant is the Wolffia.",
  "Some plants can move on their own.",
  "The world's largest seed comes from the coco de mer palm tree.",
  "Some plants can reproduce without being pollinated.",
  "The world's oldest seeds were successfully germinated after over 30,000 years.",
  "Certain plants produce natural insect repellents to deter pests.",
  "Seagrass meadows are among the most productive ecosystems on Earth, providing habitat and food for numerous marine species.",
  "Some plants have evolved to mimic the appearance and scent of other organisms to attract pollinators or avoid being eaten.",
  "The corpse flower (Amorphophallus titanum) produces the largest inflorescence in the world and emits a foul odor resembling rotting flesh to attract pollinators.",
  "Orchids have developed intricate mechanisms for attracting specific pollinators, including mimicking female insects to lure males for pollination.",
  "Some plants have symbiotic relationships with fungi, forming mycorrhizal networks that facilitate nutrient exchange.",
  "Peatlands, which are formed from the accumulation of dead plant material in waterlogged conditions, store vast amounts of carbon and play a crucial role in mitigating climate change.",
  "Certain plants exhibit phototropism, bending towards light sources to optimize photosynthesis.",
  "The desert rose (Adenium obesum) is a succulent plant species that stores water in its swollen stem to survive in arid environments.",
  "Eucalyptus trees are known for their rapid growth and ability to thrive in nutrient-poor soils, making them valuable for reforestation efforts.",
  "The pitcher plant (Nepenthes) is a carnivorous plant that traps and digests insects to obtain nutrients in nutrient-poor environments.",
  "Banana plants are not trees but giant herbs, and their stems are made up of tightly packed leaf bases.",
  "Certain plants, such as sunflowers, exhibit heliotropism, tracking the movement of the sun across the sky throughout the day.",
];

String getRandomFact() {
  var random = Random();
  return plantFacts[random.nextInt(plantFacts.length)];
}
