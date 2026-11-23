.class public Lcom/alibaba/fastjson/serializer/t1;
.super Lcom/alibaba/fastjson/util/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/util/g<",
        "Ljava/lang/reflect/Type;",
        "Lcom/alibaba/fastjson/serializer/j1;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lcom/alibaba/fastjson/serializer/t1;


# instance fields
.field private d:Z

.field private e:Lcom/alibaba/fastjson/serializer/b;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/t1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/t1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/t1;->g:Lcom/alibaba/fastjson/serializer/t1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    .line 1
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/t1;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/g;-><init>(I)V

    .line 3
    invoke-static {}, Lcom/alibaba/fastjson/util/b;->g()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/t1;->d:Z

    .line 4
    sget-object p1, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/t1;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/serializer/b;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/b;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/t1;->e:Lcom/alibaba/fastjson/serializer/b;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/t1;->d:Z

    goto :goto_0

    .line 7
    :catch_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/t1;->d:Z

    .line 8
    :goto_0
    const-class p1, Ljava/lang/Boolean;

    sget-object v0, Lcom/alibaba/fastjson/serializer/p;->a:Lcom/alibaba/fastjson/serializer/p;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    const-class p1, Ljava/lang/Character;

    sget-object v0, Lcom/alibaba/fastjson/serializer/t;->a:Lcom/alibaba/fastjson/serializer/t;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    const-class p1, Ljava/lang/Byte;

    sget-object v0, Lcom/alibaba/fastjson/serializer/q0;->a:Lcom/alibaba/fastjson/serializer/q0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    const-class p1, Ljava/lang/Short;

    sget-object v0, Lcom/alibaba/fastjson/serializer/q0;->a:Lcom/alibaba/fastjson/serializer/q0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    const-class p1, Ljava/lang/Integer;

    sget-object v0, Lcom/alibaba/fastjson/serializer/q0;->a:Lcom/alibaba/fastjson/serializer/q0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    const-class p1, Ljava/lang/Long;

    sget-object v0, Lcom/alibaba/fastjson/serializer/d1;->a:Lcom/alibaba/fastjson/serializer/d1;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    const-class p1, Ljava/lang/Float;

    sget-object v0, Lcom/alibaba/fastjson/serializer/l0;->a:Lcom/alibaba/fastjson/serializer/l0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    const-class p1, Ljava/lang/Double;

    sget-object v0, Lcom/alibaba/fastjson/serializer/d0;->b:Lcom/alibaba/fastjson/serializer/d0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    const-class p1, Ljava/math/BigDecimal;

    sget-object v0, Lcom/alibaba/fastjson/serializer/m;->a:Lcom/alibaba/fastjson/serializer/m;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    const-class p1, Ljava/math/BigInteger;

    sget-object v0, Lcom/alibaba/fastjson/serializer/n;->a:Lcom/alibaba/fastjson/serializer/n;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    const-class p1, Ljava/lang/String;

    sget-object v0, Lcom/alibaba/fastjson/serializer/z1;->a:Lcom/alibaba/fastjson/serializer/z1;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    const-class p1, [B

    sget-object v0, Lcom/alibaba/fastjson/serializer/q;->a:Lcom/alibaba/fastjson/serializer/q;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    const-class p1, [S

    sget-object v0, Lcom/alibaba/fastjson/serializer/w1;->a:Lcom/alibaba/fastjson/serializer/w1;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    const-class p1, [I

    sget-object v0, Lcom/alibaba/fastjson/serializer/p0;->a:Lcom/alibaba/fastjson/serializer/p0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    const-class p1, [J

    sget-object v0, Lcom/alibaba/fastjson/serializer/c1;->a:Lcom/alibaba/fastjson/serializer/c1;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    const-class p1, [F

    sget-object v0, Lcom/alibaba/fastjson/serializer/k0;->a:Lcom/alibaba/fastjson/serializer/k0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    const-class p1, [D

    sget-object v0, Lcom/alibaba/fastjson/serializer/c0;->a:Lcom/alibaba/fastjson/serializer/c0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    const-class p1, [Z

    sget-object v0, Lcom/alibaba/fastjson/serializer/o;->a:Lcom/alibaba/fastjson/serializer/o;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    const-class p1, [C

    sget-object v0, Lcom/alibaba/fastjson/serializer/s;->a:Lcom/alibaba/fastjson/serializer/s;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    const-class p1, [Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/fastjson/serializer/h1;->a:Lcom/alibaba/fastjson/serializer/h1;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    const-class p1, Ljava/lang/Class;

    sget-object v0, Lcom/alibaba/fastjson/serializer/v;->a:Lcom/alibaba/fastjson/serializer/v;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    const-class p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/alibaba/fastjson/serializer/a0;->a:Lcom/alibaba/fastjson/serializer/a0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    const-class p1, Ljava/util/Locale;

    sget-object v0, Lcom/alibaba/fastjson/serializer/b1;->a:Lcom/alibaba/fastjson/serializer/b1;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    const-class p1, Ljava/util/Currency;

    sget-object v0, Lcom/alibaba/fastjson/serializer/z;->a:Lcom/alibaba/fastjson/serializer/z;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    const-class p1, Ljava/util/TimeZone;

    sget-object v0, Lcom/alibaba/fastjson/serializer/a2;->a:Lcom/alibaba/fastjson/serializer/a2;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    const-class p1, Ljava/util/UUID;

    sget-object v0, Lcom/alibaba/fastjson/serializer/d2;->a:Lcom/alibaba/fastjson/serializer/d2;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    const-class p1, Ljava/net/InetAddress;

    sget-object v0, Lcom/alibaba/fastjson/serializer/n0;->a:Lcom/alibaba/fastjson/serializer/n0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    const-class p1, Ljava/net/Inet4Address;

    sget-object v0, Lcom/alibaba/fastjson/serializer/n0;->a:Lcom/alibaba/fastjson/serializer/n0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    const-class p1, Ljava/net/Inet6Address;

    sget-object v0, Lcom/alibaba/fastjson/serializer/n0;->a:Lcom/alibaba/fastjson/serializer/n0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    const-class p1, Ljava/net/InetSocketAddress;

    sget-object v0, Lcom/alibaba/fastjson/serializer/o0;->a:Lcom/alibaba/fastjson/serializer/o0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    const-class p1, Ljava/io/File;

    sget-object v0, Lcom/alibaba/fastjson/serializer/i0;->a:Lcom/alibaba/fastjson/serializer/i0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    const-class p1, Ljava/net/URI;

    sget-object v0, Lcom/alibaba/fastjson/serializer/b2;->a:Lcom/alibaba/fastjson/serializer/b2;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    const-class p1, Ljava/net/URL;

    sget-object v0, Lcom/alibaba/fastjson/serializer/c2;->a:Lcom/alibaba/fastjson/serializer/c2;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    sget-object p1, Lcom/alibaba/fastjson/serializer/d;->a:Lcom/alibaba/fastjson/serializer/d;

    const-class v0, Ljava/lang/Appendable;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    const-class v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    const-class v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    const-class p1, Ljava/util/regex/Pattern;

    sget-object v0, Lcom/alibaba/fastjson/serializer/l1;->a:Lcom/alibaba/fastjson/serializer/l1;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    const-class p1, Ljava/nio/charset/Charset;

    sget-object v0, Lcom/alibaba/fastjson/serializer/u;->a:Lcom/alibaba/fastjson/serializer/u;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    const-class p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/alibaba/fastjson/serializer/f;->a:Lcom/alibaba/fastjson/serializer/f;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    const-class p1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/alibaba/fastjson/serializer/h;->a:Lcom/alibaba/fastjson/serializer/h;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    const-class p1, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Lcom/alibaba/fastjson/serializer/j;->a:Lcom/alibaba/fastjson/serializer/j;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    sget-object p1, Lcom/alibaba/fastjson/serializer/q1;->a:Lcom/alibaba/fastjson/serializer/q1;

    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    const-class v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v1, Lcom/alibaba/fastjson/serializer/g;->a:Lcom/alibaba/fastjson/serializer/g;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    const-class v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v1, Lcom/alibaba/fastjson/serializer/i;->a:Lcom/alibaba/fastjson/serializer/i;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    const-class v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    const-class v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    :try_start_1
    const-string p1, "java.awt.Color"

    .line 54
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lcom/alibaba/fastjson/serializer/y;->a:Lcom/alibaba/fastjson/serializer/y;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.awt.Font"

    .line 55
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lcom/alibaba/fastjson/serializer/m0;->a:Lcom/alibaba/fastjson/serializer/m0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.awt.Point"

    .line 56
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lcom/alibaba/fastjson/serializer/m1;->a:Lcom/alibaba/fastjson/serializer/m1;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.awt.Rectangle"

    .line 57
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lcom/alibaba/fastjson/serializer/p1;->a:Lcom/alibaba/fastjson/serializer/p1;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string p1, "java.time.LocalDateTime"

    .line 58
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/r0;->a:Lcom/alibaba/fastjson/parser/deserializer/r0;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.time.LocalDate"

    .line 59
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.time.LocalTime"

    .line 60
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.time.ZonedDateTime"

    .line 61
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.time.OffsetDateTime"

    .line 62
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.time.OffsetTime"

    .line 63
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.time.ZoneOffset"

    .line 64
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.time.ZoneRegion"

    .line 65
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.time.Period"

    .line 66
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.time.Duration"

    .line 67
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p1, "java.time.Instant"

    .line 68
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public static final f()Lcom/alibaba/fastjson/serializer/t1;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/serializer/t1;->g:Lcom/alibaba/fastjson/serializer/t1;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/j1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/t1;->e:Lcom/alibaba/fastjson/serializer/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/serializer/b;->z(Ljava/lang/Class;Ljava/util/Map;)Lcom/alibaba/fastjson/serializer/j1;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public e(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/j1;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/alibaba/fastjson/serializer/z0;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/z0;-><init>(Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/t1;->d:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/t1;->e:Lcom/alibaba/fastjson/serializer/b;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/b;->D(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    :cond_1
    const-class v2, Ljava/io/Serializable;

    .line 31
    .line 32
    if-eq p1, v2, :cond_2

    .line 33
    .line 34
    const-class v2, Ljava/lang/Object;

    .line 35
    .line 36
    if-ne p1, v2, :cond_3

    .line 37
    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    :cond_3
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->asm()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    :cond_4
    if-eqz v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Lcom/alibaba/fastjson/util/b;->a(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_5

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    move v1, v0

    .line 70
    :goto_0
    if-eqz v1, :cond_6

    .line 71
    .line 72
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/t1;->d(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 73
    .line 74
    .line 75
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v3, "create asm serializer error, class "

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {v1, p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw v1

    .line 103
    :catch_0
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/serializer/z0;

    .line 104
    .line 105
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/z0;-><init>(Ljava/lang/Class;)V

    .line 106
    .line 107
    .line 108
    return-object v0
.end method

.method public g(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/j1;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/alibaba/fastjson/serializer/j1;

    .line 6
    .line 7
    const-class v1, Lcom/alibaba/fastjson/serializer/k;

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/util/i;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    instance-of v3, v2, Lcom/alibaba/fastjson/serializer/k;

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    check-cast v2, Lcom/alibaba/fastjson/serializer/k;

    .line 43
    .line 44
    invoke-interface {v2}, Lcom/alibaba/fastjson/serializer/k;->a()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Ljava/lang/reflect/Type;

    .line 63
    .line 64
    invoke-virtual {p0, v4, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/alibaba/fastjson/serializer/j1;

    .line 73
    .line 74
    :cond_3
    if-nez v0, :cond_7

    .line 75
    .line 76
    const-class v2, Lcom/alibaba/fastjson/a;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-eq v2, v3, :cond_7

    .line 91
    .line 92
    :try_start_1
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/util/i;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/k;

    .line 111
    .line 112
    if-nez v2, :cond_5

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    check-cast v1, Lcom/alibaba/fastjson/serializer/k;

    .line 116
    .line 117
    invoke-interface {v1}, Lcom/alibaba/fastjson/serializer/k;->a()Ljava/util/Set;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_4

    .line 130
    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/reflect/Type;

    .line 136
    .line 137
    invoke-virtual {p0, v3, v1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :catch_1
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lcom/alibaba/fastjson/serializer/j1;

    .line 146
    .line 147
    :cond_7
    if-nez v0, :cond_20

    .line 148
    .line 149
    const-class v0, Ljava/util/Map;

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_8

    .line 156
    .line 157
    sget-object v0, Lcom/alibaba/fastjson/serializer/e1;->a:Lcom/alibaba/fastjson/serializer/e1;

    .line 158
    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto/16 :goto_9

    .line 163
    .line 164
    :cond_8
    const-class v0, Ljava/util/List;

    .line 165
    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_9

    .line 171
    .line 172
    sget-object v0, Lcom/alibaba/fastjson/serializer/a1;->a:Lcom/alibaba/fastjson/serializer/a1;

    .line 173
    .line 174
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto/16 :goto_9

    .line 178
    .line 179
    :cond_9
    const-class v0, Ljava/util/Collection;

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_a

    .line 186
    .line 187
    sget-object v0, Lcom/alibaba/fastjson/serializer/x;->a:Lcom/alibaba/fastjson/serializer/x;

    .line 188
    .line 189
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto/16 :goto_9

    .line 193
    .line 194
    :cond_a
    const-class v0, Ljava/util/Date;

    .line 195
    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_b

    .line 201
    .line 202
    sget-object v0, Lcom/alibaba/fastjson/serializer/b0;->a:Lcom/alibaba/fastjson/serializer/b0;

    .line 203
    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto/16 :goto_9

    .line 208
    .line 209
    :cond_b
    const-class v0, Lcom/alibaba/fastjson/b;

    .line 210
    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_c

    .line 216
    .line 217
    sget-object v0, Lcom/alibaba/fastjson/serializer/r0;->a:Lcom/alibaba/fastjson/serializer/r0;

    .line 218
    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto/16 :goto_9

    .line 223
    .line 224
    :cond_c
    const-class v0, Lcom/alibaba/fastjson/serializer/t0;

    .line 225
    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_d

    .line 231
    .line 232
    sget-object v0, Lcom/alibaba/fastjson/serializer/u0;->a:Lcom/alibaba/fastjson/serializer/u0;

    .line 233
    .line 234
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto/16 :goto_9

    .line 238
    .line 239
    :cond_d
    const-class v0, Lcom/alibaba/fastjson/e;

    .line 240
    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_e

    .line 246
    .line 247
    sget-object v0, Lcom/alibaba/fastjson/serializer/y0;->a:Lcom/alibaba/fastjson/serializer/y0;

    .line 248
    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto/16 :goto_9

    .line 253
    .line 254
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-nez v0, :cond_1f

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-eqz v0, :cond_f

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_f

    .line 275
    .line 276
    goto/16 :goto_8

    .line 277
    .line 278
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_10

    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/t1;->g(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    new-instance v2, Lcom/alibaba/fastjson/serializer/e;

    .line 293
    .line 294
    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson/serializer/e;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/j1;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    goto/16 :goto_9

    .line 301
    .line 302
    :cond_10
    const-class v0, Ljava/lang/Throwable;

    .line 303
    .line 304
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_11

    .line 309
    .line 310
    new-instance v0, Lcom/alibaba/fastjson/serializer/g0;

    .line 311
    .line 312
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/g0;-><init>(Ljava/lang/Class;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    goto/16 :goto_9

    .line 319
    .line 320
    :cond_11
    const-class v0, Ljava/util/TimeZone;

    .line 321
    .line 322
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_12

    .line 327
    .line 328
    sget-object v0, Lcom/alibaba/fastjson/serializer/a2;->a:Lcom/alibaba/fastjson/serializer/a2;

    .line 329
    .line 330
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    goto/16 :goto_9

    .line 334
    .line 335
    :cond_12
    const-class v0, Ljava/lang/Appendable;

    .line 336
    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_13

    .line 342
    .line 343
    sget-object v0, Lcom/alibaba/fastjson/serializer/d;->a:Lcom/alibaba/fastjson/serializer/d;

    .line 344
    .line 345
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    goto/16 :goto_9

    .line 349
    .line 350
    :cond_13
    const-class v0, Ljava/nio/charset/Charset;

    .line 351
    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_14

    .line 357
    .line 358
    sget-object v0, Lcom/alibaba/fastjson/serializer/u;->a:Lcom/alibaba/fastjson/serializer/u;

    .line 359
    .line 360
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    goto/16 :goto_9

    .line 364
    .line 365
    :cond_14
    const-class v0, Ljava/util/Enumeration;

    .line 366
    .line 367
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_15

    .line 372
    .line 373
    sget-object v0, Lcom/alibaba/fastjson/serializer/f0;->a:Lcom/alibaba/fastjson/serializer/f0;

    .line 374
    .line 375
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    goto/16 :goto_9

    .line 379
    .line 380
    :cond_15
    const-class v0, Ljava/util/Calendar;

    .line 381
    .line 382
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-eqz v0, :cond_16

    .line 387
    .line 388
    sget-object v0, Lcom/alibaba/fastjson/serializer/r;->a:Lcom/alibaba/fastjson/serializer/r;

    .line 389
    .line 390
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    goto/16 :goto_9

    .line 394
    .line 395
    :cond_16
    const-class v0, Ljava/sql/Clob;

    .line 396
    .line 397
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_17

    .line 402
    .line 403
    sget-object v0, Lcom/alibaba/fastjson/serializer/w;->a:Lcom/alibaba/fastjson/serializer/w;

    .line 404
    .line 405
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    goto :goto_9

    .line 409
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    array-length v1, v0

    .line 414
    const/4 v2, 0x0

    .line 415
    const/4 v3, 0x0

    .line 416
    :goto_4
    if-ge v3, v1, :cond_1b

    .line 417
    .line 418
    aget-object v4, v0, v3

    .line 419
    .line 420
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    const-string v6, "net.sf.cglib.proxy.Factory"

    .line 425
    .line 426
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    const/4 v6, 0x1

    .line 431
    if-nez v5, :cond_1a

    .line 432
    .line 433
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    const-string v7, "org.springframework.cglib.proxy.Factory"

    .line 438
    .line 439
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    if-eqz v5, :cond_18

    .line 444
    .line 445
    goto :goto_5

    .line 446
    :cond_18
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    const-string v5, "javassist.util.proxy.ProxyObject"

    .line 451
    .line 452
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    if-eqz v4, :cond_19

    .line 457
    .line 458
    goto :goto_6

    .line 459
    :cond_19
    add-int/lit8 v3, v3, 0x1

    .line 460
    .line 461
    goto :goto_4

    .line 462
    :cond_1a
    :goto_5
    const/4 v2, 0x1

    .line 463
    :cond_1b
    const/4 v6, 0x0

    .line 464
    :goto_6
    if-nez v2, :cond_1e

    .line 465
    .line 466
    if-eqz v6, :cond_1c

    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_1c
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-eqz v0, :cond_1d

    .line 474
    .line 475
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/t1;->e(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    goto :goto_9

    .line 483
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/t1;->e(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    goto :goto_9

    .line 491
    :cond_1e
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/t1;->g(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    return-object v0

    .line 503
    :cond_1f
    :goto_8
    sget-object v0, Lcom/alibaba/fastjson/serializer/e0;->a:Lcom/alibaba/fastjson/serializer/e0;

    .line 504
    .line 505
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    :goto_9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    move-object v0, p1

    .line 513
    check-cast v0, Lcom/alibaba/fastjson/serializer/j1;

    .line 514
    .line 515
    :cond_20
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/t1;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/t1;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/t1;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/t1;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
