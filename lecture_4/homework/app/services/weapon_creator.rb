# frozen_string_literal: true

class WeaponCreator
  def initialize(mercenary)
    @mercenary = mercenary
  end

  def call
    create_weapon
  end

  private

  attr_reader :mercenary

  def create_weapon
    case @mercenary.preferred_weapon_kind
    when 'melee'
      Weapons::Katana.create!(warrior: mercenary.warrior, range: 2, damage: 25)
    when 'ranged'
      Weapons::Musket.create!(warrior: mercenary.warrior, range: 40, damage: 10)
    when 'magical'
      Weapons::Staff.create!(warrior: mercenary.warrior, range: 100, damage: 100)
    else
      NullWeapon.create!(warrior: mercenary.warrior, range: 10, damage: 10)
    end
  end
end
