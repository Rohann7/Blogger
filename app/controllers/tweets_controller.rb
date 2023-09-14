def oranges_rotten(grid)
  return -1 if grid.nil? || grid.empty? || grid[0].empty?

  rows = grid.length
  cols = grid[0].length
  queue = []
  fresh_oranges = 0
  minutes = 0

  (0...rows).each do |i|
    (0...cols).each do |j| 
      if grid[i][j] == 1
        fresh_oranges += 1
      elsif grid[i][j] == 2
        queue << [i, j]
      end
    end
  end
end