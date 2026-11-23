.class public Lcom/byazt/twu/c;
.super Lcom/byazt/twu/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3ca,
        0x14
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/rz/c;Lcom/byazt/vb/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/twu/sp;-><init>(Landroid/content/Context;Lcom/byazt/rz/c;Lcom/byazt/vb/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ve(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALTER TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ADD COLUMN encrypt INTEGER default 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/twu/sp;->tt:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->tt()Lcom/byazt/vb/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/vb/a;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/byazt/vb/tt;)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/byazt/ml/c;->sp(Lcom/byazt/vb/tt;)Z

    move-result p1

    return p1
.end method

.method public tt()B
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public ve()B
    .locals 1

    .line 1
    const/4 v0, 0x3

    return v0
.end method
