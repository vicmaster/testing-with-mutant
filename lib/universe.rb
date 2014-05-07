module Universe
  class Planet

    DEFAULT_TOLERANCE = 10

    # @param       [Numeric] radius The mean radius of the planet, in kilometers.
    # @param        [Numeric] area The surface area of the planet, in sq. kilometers.
    # @return   [PLanet]

    def initialize(radius, area)
      @radius, @area = radius, area
    end

    # Uses the equation for the area of a sphere to determine whether a planet is spherical, within a specified tolerance.

    # @param [Numeric] tolerance The allowed deviation from a perfect square
    # @return [Boolean]

    #This will return true if the planet is perfectly spherical o is inside tolerance

    #Math::PI 10 digits of presition.
    def spherical?(tolerance = DEFAULT_TOLERANCE)
      approx_area = 4 * Math::PI * @radius ** 2
      range(approx_area, tolerance).cover?(@area)
    end

    private

    def range(n, t)
      Range.new(n - t, n + t)
    end
  end
end

