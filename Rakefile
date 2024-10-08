#! rake -f

desc 'build'
task :build do |_task, args|
  files = %w[
    ambiente-pratica.cbl
    aplicando-soma.cbl
    comando-copy.cbl
    comando-evaluate.cbl
    comando-if.cbl
    comparando-valores.cbl
    criando-primeiro-programa.cbl
    criando-variavel-indice.cbl
    operadores-aritmeticos.cbl
    operadores-relacionais.cbl
    paragrafo-logica-estruturada.cbl
    perform-times.cbl
    perform-until.cbl
    perform-varing.cbl
    redefinindo-var-indice.cbl
    valores-positivos-negativos.cbl
    variavel-nivel-01.cbl
    variavel-nivel-77.cbl
    variavel-nivel-88.cbl
    virgula-mascara.cbl
  ]

  files.each do |filename|
    cmd = "cobc -v -std=ibm-strict -Wall -Wcolumn-overflow -x #{filename}"
    sh cmd
    # puts `#{cmd}`
  end
end

desc 'clean'
task :clean do
  files = Dir['*']

  executables = files.select do |f|
    st = File.stat f
    st.executable? && st.file? && File.exist?("#{f}.cbl")
  end

  puts "Estes arquivos serão apagados:", executables

  print "Confirma? (s/N) "
  confirma = gets
  if /^s$/i.match?(confirma)
    executables.each do |f|
      File.unlink(f)
    end
  end
end

task :default => [:build]

