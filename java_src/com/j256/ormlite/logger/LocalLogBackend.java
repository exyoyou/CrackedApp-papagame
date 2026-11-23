package com.j256.ormlite.logger;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class LocalLogBackend implements LogBackend {
    public static final String LOCAL_LOG_FILE_PROPERTY = "com.j256.simplelogging.file";
    public static final String LOCAL_LOG_LEVEL_PROPERTY = "com.j256.simplelogging.level";
    private static PrintStream printStream;
    private final String className;
    private final Level level;
    private static final Level DEFAULT_LEVEL = Level.DEBUG;
    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss,SSS");
    public static final String LOCAL_LOG_PROPERTIES_FILE = "/ormliteLocalLog.properties";
    private static final List<PatternLevel> classLevels = readLevelResourceFile(LocalLogBackend.class.getResourceAsStream(LOCAL_LOG_PROPERTIES_FILE));

    private static class PatternLevel {
        Level level;
        Pattern pattern;

        public PatternLevel(Pattern pattern, Level level) {
            this.pattern = pattern;
            this.level = level;
        }
    }

    static {
        openLogFile(System.getProperty(LOCAL_LOG_FILE_PROPERTY));
    }

    public LocalLogBackend(String str) {
        Level levelValueOf;
        this.className = LoggerFactory.getSimpleClassName(str);
        List<PatternLevel> list = classLevels;
        Level level = null;
        if (list != null) {
            for (PatternLevel patternLevel : list) {
                if (patternLevel.pattern.matcher(str).matches() && (level == null || patternLevel.level.ordinal() < level.ordinal())) {
                    level = patternLevel.level;
                }
            }
        }
        if (level == null) {
            String property = System.getProperty(LOCAL_LOG_LEVEL_PROPERTY);
            if (property == null) {
                level = DEFAULT_LEVEL;
            } else {
                try {
                    try {
                        levelValueOf = Level.valueOf(property.toUpperCase());
                    } catch (IllegalArgumentException unused) {
                        levelValueOf = Level.valueOf(property.toUpperCase(Locale.ENGLISH));
                    }
                    level = levelValueOf;
                } catch (IllegalArgumentException e10) {
                    throw new IllegalArgumentException("Level '" + property + "' was not found", e10);
                }
            }
        }
        this.level = level;
    }

    private static List<PatternLevel> configureClassLevels(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayList arrayList = new ArrayList();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return arrayList;
            }
            if (line.length() != 0 && line.charAt(0) != '#') {
                String[] strArrSplit = line.split(SimpleComparison.EQUAL_TO_OPERATION);
                if (strArrSplit.length != 2) {
                    System.err.println("Line is not in the format of 'pattern = level': " + line);
                } else {
                    try {
                        arrayList.add(new PatternLevel(Pattern.compile(strArrSplit[0].trim()), Level.valueOf(strArrSplit[1].trim())));
                    } catch (IllegalArgumentException unused) {
                        System.err.println("Level '" + strArrSplit[1] + "' was not found");
                    }
                }
            }
        }
    }

    public static void openLogFile(String str) {
        if (str == null) {
            printStream = System.out;
            return;
        }
        try {
            printStream = new PrintStream(new File(str));
        } catch (FileNotFoundException e10) {
            throw new IllegalArgumentException("Log file " + str + " was not found", e10);
        }
    }

    private void printMessage(Level level, String str, Throwable th) {
        if (isLevelEnabled(level)) {
            StringBuilder sb2 = new StringBuilder(128);
            sb2.append(((DateFormat) DATE_FORMAT.clone()).format(new Date()));
            sb2.append(" [");
            sb2.append(level.name());
            sb2.append("] ");
            sb2.append(this.className);
            sb2.append(' ');
            sb2.append(str);
            printStream.println(sb2.toString());
            if (th != null) {
                th.printStackTrace(printStream);
            }
        }
    }

    static List<PatternLevel> readLevelResourceFile(InputStream inputStream) {
        try {
            if (inputStream != null) {
                List<PatternLevel> listConfigureClassLevels = configureClassLevels(inputStream);
                try {
                    return listConfigureClassLevels;
                } catch (IOException unused) {
                    return listConfigureClassLevels;
                }
            }
        } catch (IOException e10) {
            System.err.println("IO exception reading the log properties file '/ormliteLocalLog.properties': " + e10);
        } finally {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
        }
        return null;
    }

    void flush() {
        printStream.flush();
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public boolean isLevelEnabled(Level level) {
        return this.level.isEnabled(level);
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public void log(Level level, String str) {
        printMessage(level, str, null);
    }

    public static class LocalLogBackendFactory implements LogBackendFactory {
        private final AtomicReference<String> queuedWarning;

        public LocalLogBackendFactory() {
            this.queuedWarning = new AtomicReference<>();
        }

        @Override // com.j256.ormlite.logger.LogBackendFactory
        public LogBackend createLogBackend(String str) {
            LocalLogBackend localLogBackend = new LocalLogBackend(str);
            String andSet = this.queuedWarning.getAndSet(null);
            if (andSet != null) {
                localLogBackend.log(Level.WARNING, andSet);
            }
            return localLogBackend;
        }

        public LocalLogBackendFactory(String str) {
            AtomicReference<String> atomicReference = new AtomicReference<>();
            this.queuedWarning = atomicReference;
            atomicReference.set(str);
        }
    }

    @Override // com.j256.ormlite.logger.LogBackend
    public void log(Level level, String str, Throwable th) {
        printMessage(level, str, th);
    }
}
