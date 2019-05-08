use POSIX; $t=new POSIX::Termios;$t->getattr((0=>*_=\$#)/2); $t->setlflag($t->getlflag&~(ECHO|ECHOK|ICANON)); $t->setcc(VTIME,1);$t->setattr(0,TCSANOW);$d="CRASH!\n";
