.class public Lcn/fly/commons/cc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcn/fly/commons/cc/s;

.field private static final b:Lcn/fly/commons/cc/k;

.field private static final c:Lcn/fly/commons/cc/p;

.field private static final d:Lcn/fly/commons/cc/b;

.field private static volatile e:Lcn/fly/commons/cc/n;

.field private static volatile f:Lcn/fly/commons/cc/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcn/fly/commons/cc/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/fly/commons/cc/s;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcn/fly/commons/cc/a;->a:Lcn/fly/commons/cc/s;

    .line 7
    .line 8
    new-instance v0, Lcn/fly/commons/cc/k;

    .line 9
    .line 10
    invoke-direct {v0}, Lcn/fly/commons/cc/k;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcn/fly/commons/cc/a;->b:Lcn/fly/commons/cc/k;

    .line 14
    .line 15
    new-instance v0, Lcn/fly/commons/cc/p;

    .line 16
    .line 17
    invoke-direct {v0}, Lcn/fly/commons/cc/p;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcn/fly/commons/cc/a;->c:Lcn/fly/commons/cc/p;

    .line 21
    .line 22
    new-instance v0, Lcn/fly/commons/cc/b;

    .line 23
    .line 24
    invoke-direct {v0}, Lcn/fly/commons/cc/b;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcn/fly/commons/cc/a;->d:Lcn/fly/commons/cc/b;

    .line 28
    .line 29
    :try_start_0
    new-instance v0, Lcn/fly/commons/cc/n;

    .line 30
    .line 31
    new-instance v1, Lcn/fly/commons/cc/a$1;

    .line 32
    .line 33
    invoke-direct {v1}, Lcn/fly/commons/cc/a$1;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcn/fly/commons/cc/n;-><init>(Lcn/fly/commons/cc/n$a;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcn/fly/commons/cc/a;->e:Lcn/fly/commons/cc/n;

    .line 40
    .line 41
    new-instance v0, Lcn/fly/commons/cc/n;

    .line 42
    .line 43
    new-instance v1, Lcn/fly/commons/cc/a$2;

    .line 44
    .line 45
    invoke-direct {v1}, Lcn/fly/commons/cc/a$2;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcn/fly/commons/cc/n;-><init>(Lcn/fly/commons/cc/n$a;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcn/fly/commons/cc/a;->f:Lcn/fly/commons/cc/n;

    .line 52
    .line 53
    sget-object v0, Lcn/fly/commons/cc/a;->e:Lcn/fly/commons/cc/n;

    .line 54
    .line 55
    const-string v1, "tt"

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2}, Lcn/fly/commons/cc/n;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :catchall_0
    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    invoke-static {}, Lcn/fly/commons/cc/aa;->a()I

    move-result v0

    return v0
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7
    check-cast p0, Lcn/fly/commons/cc/ab;

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/ab;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/fly/commons/cc/aa;->a([Ljava/lang/String;)Lcn/fly/commons/cc/aa$c;

    move-result-object p1

    invoke-static {p1, p0, p2, p3}, Lcn/fly/commons/cc/a;->a(Lcn/fly/commons/cc/aa$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/fly/commons/cc/aa;->a([Ljava/lang/String;)Lcn/fly/commons/cc/aa$c;

    move-result-object p1

    const-string v0, "ss_dhMap"

    .line 5
    invoke-virtual {p1, v0, p3}, Lcn/fly/commons/cc/aa$c;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;

    move-result-object p3

    const-string v0, "ss_dataMaps"

    invoke-virtual {p3, v0, p4}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;

    const/4 p3, 0x0

    .line 6
    invoke-static {p1, p0, p2, p3}, Lcn/fly/commons/cc/a;->a(Lcn/fly/commons/cc/aa$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static a(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lcn/fly/commons/cc/aa;->a([[B)Lcn/fly/commons/cc/aa$c;

    move-result-object p1

    invoke-static {p1, p0, p2, p3}, Lcn/fly/commons/cc/a;->a(Lcn/fly/commons/cc/aa$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private static a(Lcn/fly/commons/cc/aa$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "012JghLjfCdjTdiVdidk]e-el3fi"

    .line 8
    invoke-static {v0}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcn/fly/commons/cc/k;

    invoke-virtual {p0, v0, v1}, Lcn/fly/commons/cc/aa$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "003)hcegfc"

    .line 9
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcn/fly/commons/cc/f;

    invoke-virtual {v0, v2, v3}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "SBSP"

    .line 10
    const-class v4, Lcn/fly/commons/cc/p;

    invoke-virtual {v0, v2, v4}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "0044hcelglfk"

    .line 11
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcn/fly/commons/cc/h;

    invoke-virtual {v0, v2, v5}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "015%elfjfk:de7dc3gf7djfcRh2djBfd2dc"

    .line 12
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v6, Lcn/fly/tools/FlyHandlerThread;

    invoke-virtual {v0, v2, v6}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "019Xelfjfjdjdk$dAdcFcd7fiPiDgj-fcfSdidd6f4dj"

    .line 13
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v6, Lcn/fly/commons/cc/i;

    invoke-virtual {v0, v2, v6}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "017Lelfjeddk eifei(gjUfQfidkPg>dd)f,dj"

    .line 14
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v7, Lcn/fly/commons/cc/m;

    invoke-virtual {v0, v2, v7}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "019\'elfjel]fWdjdddiEcf0eddk<eefci@didkWe"

    .line 15
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v7, Lcn/fly/commons/cc/q;

    invoke-virtual {v0, v2, v7}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "017[elfjeddkEeifeiPghfffi0f.djddKf0dj"

    .line 16
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v8, Lcn/fly/commons/cc/l;

    invoke-virtual {v0, v2, v8}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "0178elfjegXfi=fgdkdjehedVdggSff$dcIeh"

    .line 17
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v9, Lcn/fly/commons/cc/o;

    invoke-virtual {v0, v2, v9}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "009SelfjfkSdeGdc=gf.dj"

    .line 18
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v10, Lcn/fly/commons/cc/n;

    invoke-virtual {v0, v2, v10}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "003,hceged"

    .line 19
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v10, Lcn/fly/tools/network/NetCommunicator;

    invoke-virtual {v0, v2, v10}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "004Rhcegfcgh"

    .line 20
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v10, Lcn/fly/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-virtual {v0, v2, v10}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "NoVaDataException"

    const-class v10, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;

    .line 21
    invoke-virtual {v0, v2, v10}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "003(fkdkee"

    .line 22
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v10, Lcn/fly/commons/t;

    invoke-virtual {v0, v2, v10}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v2, "HGENV"

    .line 23
    const-class v11, Lcn/fly/commons/cc/b;

    invoke-virtual {v0, v2, v11}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v6, v6}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v8, v8}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-class v2, Lcn/fly/commons/cc/r;

    .line 26
    invoke-virtual {v0, v7, v2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v9, v9}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-class v2, Lcn/fly/commons/cc/s;

    .line 28
    invoke-virtual {v0, v2, v2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v1, v1}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v3, v3}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-class v1, Lcn/fly/commons/cc/j;

    .line 31
    invoke-virtual {v0, v5, v1}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    const-class v2, Lcn/fly/commons/cc/e;

    .line 32
    invoke-virtual {v0, v1, v2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-class v1, Landroid/content/pm/PackageManager;

    const-class v2, Lcn/fly/commons/cc/g;

    .line 33
    invoke-virtual {v0, v1, v2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v4, v4}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-class v1, Lcn/fly/commons/cc/d;

    .line 35
    invoke-virtual {v0, v10, v1}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v11, v11}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v1, "ss_sdh"

    sget-object v2, Lcn/fly/commons/cc/a;->c:Lcn/fly/commons/cc/p;

    .line 37
    invoke-virtual {v0, v1, v2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v1, "ss_opSet"

    sget-object v2, Lcn/fly/commons/cc/a;->b:Lcn/fly/commons/cc/k;

    .line 38
    invoke-virtual {v0, v1, v2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v1, "ss_suls"

    sget-object v2, Lcn/fly/commons/cc/a;->a:Lcn/fly/commons/cc/s;

    .line 39
    invoke-virtual {v0, v1, v2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;

    move-result-object v0

    const-string v1, "015%fifidh;c_dkEeif(ei]i0glGd)dj6d*df"

    .line 40
    invoke-static {v1}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;

    move-result-object p1

    const-string v0, "0142fifidhfi4idIdj,iVgl^dDdj@d_dffi"

    .line 41
    invoke-static {v0}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;

    move-result-object p1

    const-string p2, "012?fifidhfi6idQdjBi.fcdidfKf"

    .line 42
    invoke-static {p2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;

    move-result-object p1

    const-string p2, "006@fifidhdfdc4j"

    .line 43
    invoke-static {p2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;

    move-result-object p1

    .line 44
    invoke-static {}, Lcn/fly/commons/cc/a;->c()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "ss_nrSpt"

    invoke-virtual {p1, p3, p2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;

    move-result-object p1

    const-string p2, "ss_hgentv"

    sget-object p3, Lcn/fly/commons/cc/a;->d:Lcn/fly/commons/cc/b;

    .line 45
    invoke-virtual {p1, p2, p3}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;

    move-result-object p1

    const-string p2, "016c]dkdfdfdk4edj:dlfidcehdl(c!dc9c"

    .line 46
    invoke-static {p2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;)Lcn/fly/commons/cc/aa$d;

    .line 47
    invoke-virtual {p0}, Lcn/fly/commons/cc/aa$c;->a()V

    return-void
.end method

.method static synthetic b()Lcn/fly/commons/cc/n;
    .locals 1

    .line 1
    sget-object v0, Lcn/fly/commons/cc/a;->f:Lcn/fly/commons/cc/n;

    .line 2
    .line 3
    return-object v0
.end method

.method private static c()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcn/fly/commons/q;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    return v0
.end method
