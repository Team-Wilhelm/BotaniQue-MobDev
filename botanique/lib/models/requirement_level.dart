enum RequirementLevel {
  low,
  medium,
  high,
}

RequirementLevel convertIntToRequirementLevel(int level) {
    switch (level) {
      case 0:
        return RequirementLevel.low;
      case 1:
        return RequirementLevel.medium;
      case 2:
        return RequirementLevel.high;
      default:
        return RequirementLevel.low;
    }
  }