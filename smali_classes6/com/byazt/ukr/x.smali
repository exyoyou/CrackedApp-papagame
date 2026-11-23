.class public Lcom/byazt/ukr/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vb/a;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x47
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/ukr/x;


# instance fields
.field public volatile tt:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ukr/x;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ukr/x;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/ukr/x;->c:Lcom/byazt/ukr/x;

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
    iget-object p1, p0, Lcom/byazt/ukr/x;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-nez p1, :cond_1

    .line 3
    const-class p1, Lcom/byazt/ukr/x;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ukr/x;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/yws/ve;->c(Landroid/content/Context;)Lcom/byazt/yws/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yws/tt;->c()Lcom/byazt/yws/uj;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/byazt/yws/uj;->c()V

    .line 7
    invoke-virtual {v0}, Lcom/byazt/yws/uj;->tt()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ukr/x;->tt:Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byazt/ukr/x;->tt:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "loghighpriority"

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const-string v0, "logstatsbatch"

    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    const-string v0, "adevent"

    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    const-string v0, "logstats"

    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
