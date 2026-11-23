.class public Lcom/byazt/ng/sl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vb/a;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0x9e
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/ng/sl;


# instance fields
.field public volatile tt:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ng/sl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ng/sl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/ng/sl;->c:Lcom/byazt/ng/sl;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ng/sl;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ng/sl;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/byazt/jd/a;->c(Landroid/content/Context;)Lcom/byazt/jd/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/jd/sp;->c()Lcom/byazt/jd/sp$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/jd/sp$c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ng/sl;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "---------------DB CREATE  SUCCESS new------------"

    .line 6
    invoke-static {p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;)V

    .line 7
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byazt/ng/sl;->tt:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    const-string v0, "adevent"

    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    const-string v0, "adevent_applog"

    return-object v0
.end method
