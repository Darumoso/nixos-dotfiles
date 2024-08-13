{ pkgs, ... }: {
   home.packages = with pkgs; [ nodejs webcord noisetorch];
}
