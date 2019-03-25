%% Beispiel 1 - Führungsübertragungsfunktion, annähernd aperiodisch
% Dies ist ein Beispiel für die verwendung der Funktion sprung_plot(), die
% in Verbindung mit dem Simulinkmodel sprung.mdl das Plotten von
% Sprungantworten beliebiger System ermöglicht. Speziell für
% Führungsübertragungsfunktion geschlossener Regelkreise, die ein PT2
% ähnliches Verhalten besitzen, unterstützt sprung_plot() die Auswertung
% durch analyse des Kurvenverlaufs
% Das Beispiel aus der Übungsaufgabensammlung der Vorlesung AR zum
% Abschnitt Vorgabe Führungsübertragungsverhalten


clc; clear all;

%%
% * Anlegen von Hilfsvariablen
t_max = 50;
Delta = 0.2;
%%
% * Regelstrecke
Z_S = 0.0005;
N_S = [1 0.4 0.0 0.0];
%%
% * Plot der Strecke
[bin, Result.G_S] = sprung_plot(Z_S,N_S,'Typ','G_S')
Result.G_S.fcn
Result.G_S.mdl
Result.G_S.plt
%%
% * Führungsübertragungsfunktion des geschlossenen Kreises
Z_W = [0.0121];
N_W = [1 0.8694 0.1737 0.0121];
%%
% * Plot der Führungsübertragungsfunktion
[bin, Result.G_W] = sprung_plot(Z_W,N_W,'Typ','G_W',...
                                        'Tbase',t_max,...
                                        'Delta',Delta,...
                                        'Res',1e-4)
Result.G_W.fcn
Result.G_W.mdl
Result.G_W.plt
%%
% Übertragungsfunktion des Reglers
D_R = 24.2;
Z_R = [-11.3595 -4.2305];
N_R = [1 0.8694 0.1737];
%%
% * Plot der Reglerübertragungsfunktion
[bin, Result.G_R] = sprung_plot(Z_R,N_R,'Res',1e-4,'Typ','G_R','D',D_R)
Result.G_R.fcn
Result.G_R.mdl
Result.G_R.plt
