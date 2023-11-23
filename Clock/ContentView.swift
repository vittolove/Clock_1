//
//  ContentView.swift
//  Clock
//
//  Created by Vittoria Vivace on 16/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isToggleOn = false

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    EditButton()
                        .font(.title3)
                        .foregroundColor(.orange)
                        .padding(.leading, 20)
                    Spacer()
                    
                    Button(action: {
                        // Azione per il pulsante "plus"
                    }) {
                        Image(systemName: "plus")
                            .font(.title2)
                            .foregroundColor(.orange)
                            .padding(.trailing, 20)
                    
                    }
                }
                
                Text("Alarms")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.leading, 20)
                    .padding(.top, 5)
                
                HStack {
                    Image(systemName: "bed.double.fill")
                        .foregroundColor(.white)
                        .padding(.leading, 20)
                        .padding(.top, 15)
                    Text("Sleep | Wake Up")
                        .foregroundColor(.white)
                        .font(.title2)
                        .bold()
                        .padding(.top, 15)
                }

                // Divider per separare le sveglie
                Divider()
                    .background(Color.gray)
                    .padding(.leading, 20)
                    .padding(.trailing, 10)
                   
        
                    

                HStack {
                    Text("No Alarm")
                        .foregroundColor(.gray)
                        .padding(.leading, 20)
                        .padding(.top, -5)
                       
                    
                  Spacer()
                    
                    
                    
                    Button("SET UP") {
                        // AZIONE QUANDO PREMI IL BOTTONE
                    }
                    .padding(7)
                    .foregroundColor(.orange)
                    .font(.system(size: 14))
                    .bold()
                    .background(RoundedRectangle(cornerRadius: 50).fill(Color.gray.opacity(0.3)))
                    .padding(.top, -5)
                   
                }
                .padding(.trailing, 20) // Aggiunto padding a destra del bottone per allinearlo con gli altri elementi
                
                .background(Color.black)
                .padding(.top, 10)
            

                // ... (Continua con le altre sezioni e aggiungi Divider dove necessario)
                
                // Divider per separare le sveglie
                Divider()
                    .background(Color.gray)
                    .padding(.leading, 20)
                    .padding(.trailing, 10)
                    .padding(.top, 5) // Aggiunto uno spazio sotto la linea
                    .padding(.bottom, 30)
                

                Text("Other")
                    .foregroundColor(.white)
                    .bold()
                    .font(.title2)
                    .padding(.leading, 20)
                
                
                
            
                
                // Divider per separare le sveglie
                Divider()
                    .background(Color.gray)
                    .padding(.leading, 20)
                    .padding(.trailing, 10)
                    .padding(.top, -3) // Aggiunto uno spazio sotto la linea

                
                HStack {
                    Text("12:27")
                        .foregroundColor(isToggleOn ? .white : .gray)
                        .padding(.leading, 20)
                        .font(.system(size: 50))
                        .padding(.leading, -16)
                        .padding(.top, -22)
                    
                    Text("AM")
                        .foregroundColor(isToggleOn ? .white : .gray)
                        .font(.system(size: 30)) // Imposta la dimensione del carattere desiderata per il testo "AM"
                        .padding(.bottom, -13) // Aggiunto spazio sotto il testo "AM"
                        .padding(.top, -22)
                        

                    Spacer()

                    Toggle("", isOn: $isToggleOn)
                        .labelsHidden()
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                        .padding(.top, -22)
                }
                
                .padding()
                
                Text("Alarm")
                    .foregroundColor(.gray)
                    .padding(.leading, 27)
                    .padding(.top, -22)
                    
                
                // Divider 2 per separare le sveglie
                Divider()
                    .background(Color.gray)
                    .padding(.leading, 20)
                    .padding(.trailing, 10)
                    .padding(.top, -3) // Aggiunto uno spazio sotto la linea
                
                
                HStack {
                    Text("12:50")
                        .foregroundColor(isToggleOn ? .white : .gray)
                        .padding(.leading, 20)
                        .font(.system(size: 50))
                        .padding(.leading, -16)
                        .padding(.top, -22)
                    
                    Text("AM")
                        .foregroundColor(isToggleOn ? .white : .gray)
                        .font(.system(size: 30)) // Imposta la dimensione del carattere desiderata per il testo "AM"
                        .padding(.bottom, -13) // Aggiunto spazio sotto il testo "AM"
                        .padding(.top, -22)
                        

                    Spacer()

                    Toggle("", isOn: $isToggleOn)
                        .labelsHidden()
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                        .padding(.top, -22)
                }
                
                .padding()
                
                Text("Alarm")
                    .foregroundColor(.gray)
                    .padding(.leading, 27)
                    .padding(.top, -22)
                
                
                // Divider 3 per separare le sveglie
                Divider()
                    .background(Color.gray)
                    .padding(.leading, 20)
                    .padding(.trailing, 10)
                    .padding(.top, -3) // Aggiunto uno spazio sotto la linea
                
                
                HStack {
                    Text("14:00")
                        .foregroundColor(isToggleOn ? .white : .gray)
                        .padding(.leading, 20)
                        .font(.system(size: 50))
                        .padding(.leading, -16)
                        .padding(.top, -22)
                    
                    Text("AM")
                        .foregroundColor(isToggleOn ? .white : .gray)
                        .font(.system(size: 30)) // Imposta la dimensione del carattere desiderata per il testo "AM"
                        .padding(.bottom, -13) // Aggiunto spazio sotto il testo "AM"
                        .padding(.top, -22)
                        

                    Spacer()

                    Toggle("", isOn: $isToggleOn)
                        .labelsHidden()
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                        .padding(.top, -22)
                }
                
                .padding()
                
                Text("Alarm")
                    .foregroundColor(.gray)
                    .padding(.leading, 27)
                    .padding(.top, -22)
                
                
                

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(Color.black.edgesIgnoringSafeArea(.all))
            .navigationBarHidden(true)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
