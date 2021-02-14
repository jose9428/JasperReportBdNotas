package modelo;

public class Alumno {

    private String codeAlu;
    private String alumno;
    private int notaParcial;
    private int notaFinal;

    private static int cuenta = 1;

    public Alumno(String alumno) {
        this.codeAlu = String.format("A%04d", cuenta++);
        this.alumno = alumno;
        this.notaParcial = (int) (Math.random() * 21);
        this.notaFinal = (int) (Math.random() * 21);
    }

    @Override
    public String toString() {
        return "Alumno{" + "codeAlu=" + codeAlu + ", alumno=" + alumno + ", notaParcial=" + notaParcial + ", notaFinal=" + notaFinal + '}';
    }

    public int getNotaFinal() {
        return notaFinal;
    }

    public void setNotaFinal(int notaFinal) {
        this.notaFinal = notaFinal;
    }

    public String getCodeAlu() {
        return codeAlu;
    }

    public void setCodeAlu(String codeAlu) {
        this.codeAlu = codeAlu;
    }

    public String getAlumno() {
        return alumno;
    }

    public void setAlumno(String alumno) {
        this.alumno = alumno;
    }

    public int getNotaParcial() {
        return notaParcial;
    }

    public void setNotaParcial(int notaParcial) {
        this.notaParcial = notaParcial;
    }

}
