.class public Lcom/kuaishou/weapon/p0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kuaishou/weapon/p0/u$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x4

.field public static final d:I = 0x0

.field public static final e:I = 0x8

.field public static final f:I = 0x1

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field private static o:J


# instance fields
.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/content/Context;

.field private k:Lcom/kuaishou/weapon/p0/q;

.field private l:Lcom/kuaishou/weapon/p0/t;

.field private m:Ljava/io/File;

.field private n:Lcom/kuaishou/weapon/p0/dn;

.field private p:I

.field private q:I

.field private r:Z

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/kuaishou/weapon/p0/u$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/kuaishou/weapon/p0/u;->p:I

    .line 6
    .line 7
    iput v0, p0, Lcom/kuaishou/weapon/p0/u;->q:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/kuaishou/weapon/p0/u;->r:Z

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kuaishou/weapon/p0/u;->i:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/kuaishou/weapon/p0/u;->s:Ljava/util/Map;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/kuaishou/weapon/p0/u;->j:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/kuaishou/weapon/p0/q;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/q;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/kuaishou/weapon/p0/u;->k:Lcom/kuaishou/weapon/p0/q;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/kuaishou/weapon/p0/t;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/t;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/kuaishou/weapon/p0/u;->l:Lcom/kuaishou/weapon/p0/t;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/kuaishou/weapon/p0/dn;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/dn;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/kuaishou/weapon/p0/u;->n:Lcom/kuaishou/weapon/p0/dn;

    .line 44
    .line 45
    new-instance v0, Ljava/io/File;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v1, ".tmp"

    .line 52
    .line 53
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/kuaishou/weapon/p0/u;->m:Ljava/io/File;

    .line 57
    .line 58
    iput p2, p0, Lcom/kuaishou/weapon/p0/u;->p:I

    .line 59
    .line 60
    iput-boolean p3, p0, Lcom/kuaishou/weapon/p0/u;->r:Z

    .line 61
    .line 62
    return-void
.end method

.method private a(Lcom/kuaishou/weapon/p0/s;)V
    .locals 8

    const-string v0, "-"

    const/4 v1, 0x0

    .line 31
    :try_start_0
    iget-object v2, p1, Lcom/kuaishou/weapon/p0/s;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/kuaishou/weapon/p0/s;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    goto/16 :goto_2

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/kuaishou/weapon/p0/u;->m:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 33
    iget-object v2, p0, Lcom/kuaishou/weapon/p0/u;->m:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 34
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/kuaishou/weapon/p0/u;->m:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/kuaishou/weapon/p0/s;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/kuaishou/weapon/p0/s;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/kuaishou/weapon/p0/u;->m:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/kuaishou/weapon/p0/s;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/kuaishou/weapon/p0/s;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".zip"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/l;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/l;

    move-result-object v0

    iget-object v4, p1, Lcom/kuaishou/weapon/p0/s;->i:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/kuaishou/weapon/p0/l;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/l;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/l;

    move-result-object v0

    iget-object v4, p1, Lcom/kuaishou/weapon/p0/s;->i:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/kuaishou/weapon/p0/l;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_6

    .line 38
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 39
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    const-string v4, "a3NyaXNrY3RsYnVzaW5zc3Z4cHprd3NwYWlvcXBrc3M="

    const-string v5, "utf-8"

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/kuaishou/weapon/p0/c;->a([BI)[B

    move-result-object v4

    .line 41
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/kuaishou/weapon/p0/b;->c(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v4

    if-eqz v4, :cond_5

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_4
    const/4 v0, 0x0

    :cond_5
    if-nez v4, :cond_7

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 46
    :cond_6
    iget-object v4, p0, Lcom/kuaishou/weapon/p0/u;->s:Ljava/util/Map;

    iget v5, p1, Lcom/kuaishou/weapon/p0/s;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/kuaishou/weapon/p0/u$a;

    const/4 v7, 0x3

    invoke-direct {v6, p0, v7}, Lcom/kuaishou/weapon/p0/u$a;-><init>(Lcom/kuaishou/weapon/p0/u;I)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_7
    :goto_0
    invoke-static {v3}, Lcom/kuaishou/weapon/p0/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_b

    .line 48
    iget-object v0, p1, Lcom/kuaishou/weapon/p0/s;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/kuaishou/weapon/p0/dl;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kuaishou/weapon/p0/s;->e:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->k:Lcom/kuaishou/weapon/p0/q;

    invoke-virtual {v0, p1, v1, v1}, Lcom/kuaishou/weapon/p0/q;->a(Lcom/kuaishou/weapon/p0/s;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->s:Ljava/util/Map;

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    iget v3, p1, Lcom/kuaishou/weapon/p0/s;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 53
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->s:Ljava/util/Map;

    iget v3, p1, Lcom/kuaishou/weapon/p0/s;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/kuaishou/weapon/p0/u$a;

    invoke-direct {v4, p0, v2}, Lcom/kuaishou/weapon/p0/u$a;-><init>(Lcom/kuaishou/weapon/p0/u;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_8
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->n:Lcom/kuaishou/weapon/p0/dn;

    const-string v3, "wlpauct2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/kuaishou/weapon/p0/dn;->a(Ljava/lang/String;JZ)V

    goto :goto_1

    .line 55
    :cond_9
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->s:Ljava/util/Map;

    if-eqz v0, :cond_a

    iget v2, p1, Lcom/kuaishou/weapon/p0/s;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 56
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->s:Ljava/util/Map;

    iget v2, p1, Lcom/kuaishou/weapon/p0/s;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/kuaishou/weapon/p0/u$a;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/kuaishou/weapon/p0/u$a;-><init>(Lcom/kuaishou/weapon/p0/u;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_a
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->k:Lcom/kuaishou/weapon/p0/q;

    iget v2, p1, Lcom/kuaishou/weapon/p0/s;->a:I

    iget-object v3, p1, Lcom/kuaishou/weapon/p0/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/kuaishou/weapon/p0/q;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z

    goto :goto_3

    .line 58
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 61
    :cond_c
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->k:Lcom/kuaishou/weapon/p0/q;

    iget v2, p1, Lcom/kuaishou/weapon/p0/s;->a:I

    iget-object v3, p1, Lcom/kuaishou/weapon/p0/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/kuaishou/weapon/p0/q;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z

    :goto_1
    return-void

    .line 62
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->k:Lcom/kuaishou/weapon/p0/q;

    iget v2, p1, Lcom/kuaishou/weapon/p0/s;->a:I

    iget-object v3, p1, Lcom/kuaishou/weapon/p0/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/kuaishou/weapon/p0/q;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 63
    :catchall_0
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->k:Lcom/kuaishou/weapon/p0/q;

    iget v2, p1, Lcom/kuaishou/weapon/p0/s;->a:I

    iget-object p1, p1, Lcom/kuaishou/weapon/p0/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Lcom/kuaishou/weapon/p0/q;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z

    :goto_3
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kuaishou/weapon/p0/cs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/kuaishou/weapon/p0/cs;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/u;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/kuaishou/weapon/p0/ct;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/kuaishou/weapon/p0/u;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/ct;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v3, Lcom/kuaishou/weapon/p0/bl;

    iget-object v4, p0, Lcom/kuaishou/weapon/p0/u;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/kuaishou/weapon/p0/bl;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kuaishou/weapon/p0/bl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    .line 9
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/kuaishou/weapon/p0/u;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/l;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/l;

    move-result-object v2

    .line 11
    new-instance v3, Lcom/kuaishou/weapon/p0/m;

    invoke-direct {v3, v0, v1}, Lcom/kuaishou/weapon/p0/m;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 12
    sget-object v0, Lcom/kuaishou/weapon/p0/WeaponHI;->cookieData:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/kuaishou/weapon/p0/m;->a(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/kuaishou/weapon/p0/WeaponHI;->encryENV:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/kuaishou/weapon/p0/m;->b(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v3}, Lcom/kuaishou/weapon/p0/l;->a(Lcom/kuaishou/weapon/p0/m;)Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    const-string v0, "antispamPluginManageRsp"

    .line 17
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/kuaishou/weapon/p0/bl;

    iget-object v4, p0, Lcom/kuaishou/weapon/p0/u;->j:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/kuaishou/weapon/p0/bl;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {v1, v0}, Lcom/kuaishou/weapon/p0/bl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21
    iget v0, p0, Lcom/kuaishou/weapon/p0/u;->q:I

    if-nez v0, :cond_2

    const/16 v0, 0x8

    .line 22
    iput v0, p0, Lcom/kuaishou/weapon/p0/u;->q:I

    .line 23
    :cond_2
    new-instance v0, Landroid/accounts/NetworkErrorException;

    const-string v1, "kuaishou risk pluginloader response is null"

    invoke-direct {v0, v1}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    .line 25
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    const-string v0, "plugin"

    .line 26
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->n:Lcom/kuaishou/weapon/p0/dn;

    if-eqz v0, :cond_6

    const-string v1, "wlpauct2"

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/kuaishou/weapon/p0/dn;->a(Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_5
    const/4 v1, -0x7

    if-ne v0, v1, :cond_6

    .line 29
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/u;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/dn;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/dn;

    move-result-object v0

    const-string v1, "plc001_t_re"

    .line 30
    invoke-virtual {v0, v1, v3, v2}, Lcom/kuaishou/weapon/p0/dn;->a(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    const-class v2, Lcom/kuaishou/weapon/p0/u;

    .line 4
    .line 5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iget v0, v1, Lcom/kuaishou/weapon/p0/u;->p:I

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v3, :cond_0

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    if-eq v0, v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    if-eq v0, v4, :cond_0

    .line 16
    .line 17
    iget-boolean v0, v1, Lcom/kuaishou/weapon/p0/u;->r:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    sget-wide v6, Lcom/kuaishou/weapon/p0/u;->o:J

    .line 26
    .line 27
    sub-long/2addr v4, v6

    .line 28
    const-wide/32 v6, 0x493e0

    .line 29
    .line 30
    .line 31
    cmp-long v0, v4, v6

    .line 32
    .line 33
    if-gez v0, :cond_0

    .line 34
    .line 35
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    invoke-static {}, Lcom/kuaishou/weapon/p0/WeaponHI;->iD()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    :try_start_2
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/u;->l:Lcom/kuaishou/weapon/p0/t;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/kuaishou/weapon/p0/t;->d()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    sput-wide v4, Lcom/kuaishou/weapon/p0/u;->o:J

    .line 50
    .line 51
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/u;->n:Lcom/kuaishou/weapon/p0/dn;

    .line 52
    .line 53
    const-string v4, "wlpauct2"

    .line 54
    .line 55
    invoke-virtual {v0, v4}, Lcom/kuaishou/weapon/p0/dn;->a(Ljava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    sub-long/2addr v6, v4

    .line 64
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/u;->n:Lcom/kuaishou/weapon/p0/dn;

    .line 65
    .line 66
    const-string v4, "plc001_pd_ptip_pi"

    .line 67
    .line 68
    const/4 v5, 0x6

    .line 69
    invoke-virtual {v0, v4, v5}, Lcom/kuaishou/weapon/p0/dn;->a(Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    int-to-long v4, v0

    .line 74
    const-wide/32 v8, 0x36ee80

    .line 75
    .line 76
    .line 77
    mul-long v4, v4, v8

    .line 78
    .line 79
    sub-long/2addr v6, v4

    .line 80
    const-wide/16 v4, 0x0

    .line 81
    .line 82
    cmp-long v0, v6, v4

    .line 83
    .line 84
    if-lez v0, :cond_1f

    .line 85
    .line 86
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/u;->l:Lcom/kuaishou/weapon/p0/t;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/kuaishou/weapon/p0/t;->a()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v5, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    new-instance v6, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v7, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/kuaishou/weapon/p0/u;->a()Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    if-eqz v8, :cond_1e

    .line 117
    .line 118
    const/4 v9, 0x0

    .line 119
    :try_start_3
    iget-object v10, v1, Lcom/kuaishou/weapon/p0/u;->j:Landroid/content/Context;

    .line 120
    .line 121
    invoke-static {v10}, Lcom/kuaishou/weapon/p0/dk;->b(Landroid/content/Context;)Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    new-instance v12, Ljava/util/HashSet;

    .line 130
    .line 131
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 132
    .line 133
    .line 134
    const/4 v13, 0x0

    .line 135
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-eqz v14, :cond_6

    .line 140
    .line 141
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    check-cast v14, Ljava/lang/String;

    .line 146
    .line 147
    const/4 v15, 0x3

    .line 148
    if-eqz v10, :cond_2

    .line 149
    .line 150
    const-string v3, "64"

    .line 151
    .line 152
    invoke-virtual {v14, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_2

    .line 157
    .line 158
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-le v3, v15, :cond_1

    .line 163
    .line 164
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    sub-int/2addr v3, v15

    .line 169
    invoke-virtual {v14, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    sub-int/2addr v13, v15

    .line 186
    invoke-virtual {v14, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v13, ".32"

    .line 194
    .line 195
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    :goto_1
    const/4 v3, 0x1

    .line 206
    const/4 v13, 0x1

    .line 207
    goto :goto_0

    .line 208
    :cond_1
    :goto_2
    const/4 v13, 0x1

    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    :cond_2
    if-nez v10, :cond_3

    .line 212
    .line 213
    const-string v3, "32"

    .line 214
    .line 215
    invoke-virtual {v14, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_3

    .line 220
    .line 221
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-le v3, v15, :cond_1

    .line 226
    .line 227
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    sub-int/2addr v3, v15

    .line 232
    invoke-virtual {v14, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    sub-int/2addr v13, v15

    .line 249
    invoke-virtual {v14, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v13, ".64"

    .line 257
    .line 258
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_3
    if-eqz v10, :cond_4

    .line 270
    .line 271
    const-string v3, "v8"

    .line 272
    .line 273
    invoke-virtual {v14, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_4

    .line 278
    .line 279
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-le v3, v15, :cond_1

    .line 284
    .line 285
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    sub-int/2addr v3, v15

    .line 290
    invoke-virtual {v14, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 303
    .line 304
    .line 305
    move-result v13

    .line 306
    sub-int/2addr v13, v15

    .line 307
    invoke-virtual {v14, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v13, ".v7"

    .line 315
    .line 316
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    goto :goto_1

    .line 327
    :cond_4
    if-nez v10, :cond_5

    .line 328
    .line 329
    const-string v3, "v7"

    .line 330
    .line 331
    invoke-virtual {v14, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_5

    .line 336
    .line 337
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-le v3, v15, :cond_1

    .line 342
    .line 343
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    sub-int/2addr v3, v15

    .line 348
    invoke-virtual {v14, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 361
    .line 362
    .line 363
    move-result v13

    .line 364
    sub-int/2addr v13, v15

    .line 365
    invoke-virtual {v14, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v13

    .line 369
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v13, ".v8"

    .line 373
    .line 374
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    goto/16 :goto_2

    .line 385
    .line 386
    :cond_5
    :goto_3
    const/4 v3, 0x1

    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :cond_6
    if-eqz v13, :cond_7

    .line 390
    .line 391
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 396
    .line 397
    .line 398
    move-result v10

    .line 399
    if-eqz v10, :cond_7

    .line 400
    .line 401
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v10

    .line 405
    check-cast v10, Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 408
    .line 409
    .line 410
    goto :goto_4

    .line 411
    :cond_7
    move v9, v13

    .line 412
    :catchall_0
    :try_start_4
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v10

    .line 420
    if-eqz v10, :cond_13

    .line 421
    .line 422
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v10

    .line 426
    check-cast v10, Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 429
    .line 430
    .line 431
    move-result-object v11

    .line 432
    invoke-static {v11}, Lcom/kuaishou/weapon/p0/o;->a(Lorg/json/JSONObject;)Lcom/kuaishou/weapon/p0/s;

    .line 433
    .line 434
    .line 435
    move-result-object v11

    .line 436
    if-eqz v11, :cond_8

    .line 437
    .line 438
    if-eqz v9, :cond_a

    .line 439
    .line 440
    iget-boolean v12, v11, Lcom/kuaishou/weapon/p0/s;->y:Z

    .line 441
    .line 442
    if-nez v12, :cond_a

    .line 443
    .line 444
    const-string v12, "32"

    .line 445
    .line 446
    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 447
    .line 448
    .line 449
    move-result v12

    .line 450
    if-nez v12, :cond_9

    .line 451
    .line 452
    const-string v12, "64"

    .line 453
    .line 454
    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 455
    .line 456
    .line 457
    move-result v12

    .line 458
    if-nez v12, :cond_9

    .line 459
    .line 460
    const-string v12, "v7"

    .line 461
    .line 462
    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 463
    .line 464
    .line 465
    move-result v12

    .line 466
    if-nez v12, :cond_9

    .line 467
    .line 468
    const-string v12, "v8"

    .line 469
    .line 470
    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 471
    .line 472
    .line 473
    move-result v12

    .line 474
    if-eqz v12, :cond_a

    .line 475
    .line 476
    :cond_9
    const/4 v12, 0x1

    .line 477
    iput-boolean v12, v11, Lcom/kuaishou/weapon/p0/s;->y:Z

    .line 478
    .line 479
    :cond_a
    iget-boolean v12, v11, Lcom/kuaishou/weapon/p0/s;->v:Z

    .line 480
    .line 481
    if-eqz v12, :cond_b

    .line 482
    .line 483
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    :cond_b
    iget-boolean v10, v11, Lcom/kuaishou/weapon/p0/s;->y:Z

    .line 487
    .line 488
    if-nez v10, :cond_c

    .line 489
    .line 490
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    :cond_c
    invoke-interface {v0, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 494
    .line 495
    .line 496
    move-result v10

    .line 497
    if-ltz v10, :cond_11

    .line 498
    .line 499
    iget-boolean v12, v11, Lcom/kuaishou/weapon/p0/s;->y:Z

    .line 500
    .line 501
    if-eqz v12, :cond_11

    .line 502
    .line 503
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v12

    .line 507
    check-cast v12, Lcom/kuaishou/weapon/p0/s;

    .line 508
    .line 509
    iget-object v13, v11, Lcom/kuaishou/weapon/p0/s;->d:Ljava/lang/String;

    .line 510
    .line 511
    iget-object v14, v12, Lcom/kuaishou/weapon/p0/s;->d:Ljava/lang/String;

    .line 512
    .line 513
    invoke-static {v13, v14}, Lcom/kuaishou/weapon/p0/dl;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 514
    .line 515
    .line 516
    move-result v13

    .line 517
    if-eqz v13, :cond_f

    .line 518
    .line 519
    iget v13, v11, Lcom/kuaishou/weapon/p0/s;->x:I

    .line 520
    .line 521
    iget v12, v12, Lcom/kuaishou/weapon/p0/s;->x:I

    .line 522
    .line 523
    if-eq v13, v12, :cond_d

    .line 524
    .line 525
    iget-object v12, v1, Lcom/kuaishou/weapon/p0/u;->l:Lcom/kuaishou/weapon/p0/t;

    .line 526
    .line 527
    iget v14, v11, Lcom/kuaishou/weapon/p0/s;->a:I

    .line 528
    .line 529
    invoke-virtual {v12, v14, v13}, Lcom/kuaishou/weapon/p0/t;->c(II)V

    .line 530
    .line 531
    .line 532
    :cond_d
    iget-object v12, v1, Lcom/kuaishou/weapon/p0/u;->l:Lcom/kuaishou/weapon/p0/t;

    .line 533
    .line 534
    iget v13, v11, Lcom/kuaishou/weapon/p0/s;->a:I

    .line 535
    .line 536
    invoke-virtual {v12, v13}, Lcom/kuaishou/weapon/p0/t;->d(I)Z

    .line 537
    .line 538
    .line 539
    move-result v12

    .line 540
    if-nez v12, :cond_e

    .line 541
    .line 542
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    :cond_e
    move-object/from16 v17, v3

    .line 546
    .line 547
    move-object v15, v8

    .line 548
    move/from16 v16, v9

    .line 549
    .line 550
    const/4 v3, 0x1

    .line 551
    goto :goto_6

    .line 552
    :cond_f
    iget-object v13, v1, Lcom/kuaishou/weapon/p0/u;->n:Lcom/kuaishou/weapon/p0/dn;

    .line 553
    .line 554
    const-string v14, "wlpauct2"

    .line 555
    .line 556
    move-object v15, v8

    .line 557
    move/from16 v16, v9

    .line 558
    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 560
    .line 561
    .line 562
    move-result-wide v8

    .line 563
    move-object/from16 v17, v3

    .line 564
    .line 565
    const/4 v3, 0x1

    .line 566
    invoke-virtual {v13, v14, v8, v9, v3}, Lcom/kuaishou/weapon/p0/dn;->a(Ljava/lang/String;JZ)V

    .line 567
    .line 568
    .line 569
    iget v8, v11, Lcom/kuaishou/weapon/p0/s;->x:I

    .line 570
    .line 571
    iget v9, v12, Lcom/kuaishou/weapon/p0/s;->x:I

    .line 572
    .line 573
    if-eq v8, v9, :cond_10

    .line 574
    .line 575
    iget-object v9, v1, Lcom/kuaishou/weapon/p0/u;->l:Lcom/kuaishou/weapon/p0/t;

    .line 576
    .line 577
    iget v12, v11, Lcom/kuaishou/weapon/p0/s;->a:I

    .line 578
    .line 579
    invoke-virtual {v9, v12, v8}, Lcom/kuaishou/weapon/p0/t;->c(II)V

    .line 580
    .line 581
    .line 582
    :cond_10
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    :goto_6
    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    goto :goto_7

    .line 589
    :cond_11
    move-object/from16 v17, v3

    .line 590
    .line 591
    move-object v15, v8

    .line 592
    move/from16 v16, v9

    .line 593
    .line 594
    const/4 v3, 0x1

    .line 595
    iget-boolean v8, v11, Lcom/kuaishou/weapon/p0/s;->y:Z

    .line 596
    .line 597
    if-eqz v8, :cond_12

    .line 598
    .line 599
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    :cond_12
    :goto_7
    move-object v8, v15

    .line 603
    move/from16 v9, v16

    .line 604
    .line 605
    move-object/from16 v3, v17

    .line 606
    .line 607
    goto/16 :goto_5

    .line 608
    .line 609
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    :cond_14
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 614
    .line 615
    .line 616
    move-result v3

    .line 617
    if-eqz v3, :cond_16

    .line 618
    .line 619
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    check-cast v3, Lcom/kuaishou/weapon/p0/s;

    .line 624
    .line 625
    iget-object v8, v3, Lcom/kuaishou/weapon/p0/s;->c:Ljava/lang/String;

    .line 626
    .line 627
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v8

    .line 631
    if-nez v8, :cond_14

    .line 632
    .line 633
    iget-object v8, v1, Lcom/kuaishou/weapon/p0/u;->i:Ljava/util/List;

    .line 634
    .line 635
    if-eqz v8, :cond_15

    .line 636
    .line 637
    iget v9, v3, Lcom/kuaishou/weapon/p0/s;->a:I

    .line 638
    .line 639
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 640
    .line 641
    .line 642
    move-result-object v9

    .line 643
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    :cond_15
    iget-object v8, v1, Lcom/kuaishou/weapon/p0/u;->k:Lcom/kuaishou/weapon/p0/q;

    .line 647
    .line 648
    iget-object v3, v3, Lcom/kuaishou/weapon/p0/s;->c:Ljava/lang/String;

    .line 649
    .line 650
    invoke-virtual {v8, v3}, Lcom/kuaishou/weapon/p0/q;->a(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    goto :goto_8

    .line 654
    :cond_16
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    :cond_17
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    if-eqz v3, :cond_19

    .line 663
    .line 664
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    check-cast v3, Lcom/kuaishou/weapon/p0/s;

    .line 669
    .line 670
    iget-object v6, v3, Lcom/kuaishou/weapon/p0/s;->c:Ljava/lang/String;

    .line 671
    .line 672
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result v6

    .line 676
    if-nez v6, :cond_17

    .line 677
    .line 678
    iget-object v6, v1, Lcom/kuaishou/weapon/p0/u;->i:Ljava/util/List;

    .line 679
    .line 680
    if-eqz v6, :cond_18

    .line 681
    .line 682
    iget v8, v3, Lcom/kuaishou/weapon/p0/s;->a:I

    .line 683
    .line 684
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 685
    .line 686
    .line 687
    move-result-object v8

    .line 688
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    :cond_18
    iget-object v6, v1, Lcom/kuaishou/weapon/p0/u;->k:Lcom/kuaishou/weapon/p0/q;

    .line 692
    .line 693
    iget-object v3, v3, Lcom/kuaishou/weapon/p0/s;->c:Ljava/lang/String;

    .line 694
    .line 695
    invoke-virtual {v6, v3}, Lcom/kuaishou/weapon/p0/q;->a(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    goto :goto_9

    .line 699
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    .line 700
    .line 701
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .line 703
    .line 704
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 705
    .line 706
    .line 707
    move-result v3

    .line 708
    if-eqz v3, :cond_1a

    .line 709
    .line 710
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 711
    .line 712
    .line 713
    :cond_1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 714
    .line 715
    .line 716
    move-result v3

    .line 717
    if-eqz v3, :cond_1b

    .line 718
    .line 719
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 720
    .line 721
    .line 722
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    :cond_1c
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 727
    .line 728
    .line 729
    move-result v3

    .line 730
    if-eqz v3, :cond_20

    .line 731
    .line 732
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v3

    .line 736
    check-cast v3, Lcom/kuaishou/weapon/p0/s;

    .line 737
    .line 738
    if-eqz v3, :cond_1c

    .line 739
    .line 740
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    move-result v6

    .line 744
    if-eqz v6, :cond_1d

    .line 745
    .line 746
    iget-object v6, v1, Lcom/kuaishou/weapon/p0/u;->k:Lcom/kuaishou/weapon/p0/q;

    .line 747
    .line 748
    iget v7, v3, Lcom/kuaishou/weapon/p0/s;->a:I

    .line 749
    .line 750
    iget-object v3, v3, Lcom/kuaishou/weapon/p0/s;->d:Ljava/lang/String;

    .line 751
    .line 752
    const/4 v8, 0x0

    .line 753
    invoke-virtual {v6, v7, v3, v8}, Lcom/kuaishou/weapon/p0/q;->a(ILjava/lang/String;Landroid/content/pm/PackageInfo;)Z

    .line 754
    .line 755
    .line 756
    goto :goto_a

    .line 757
    :cond_1d
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 758
    .line 759
    .line 760
    move-result v6

    .line 761
    if-eqz v6, :cond_1c

    .line 762
    .line 763
    invoke-direct {v1, v3}, Lcom/kuaishou/weapon/p0/u;->a(Lcom/kuaishou/weapon/p0/s;)V

    .line 764
    .line 765
    .line 766
    goto :goto_a

    .line 767
    :cond_1e
    new-instance v0, Ljava/lang/Exception;

    .line 768
    .line 769
    const-string v3, "pluginJsonObject is null "

    .line 770
    .line 771
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    throw v0

    .line 775
    :cond_1f
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/u;->k:Lcom/kuaishou/weapon/p0/q;

    .line 776
    .line 777
    invoke-virtual {v0}, Lcom/kuaishou/weapon/p0/q;->c()V

    .line 778
    .line 779
    .line 780
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/u;->l:Lcom/kuaishou/weapon/p0/t;

    .line 781
    .line 782
    invoke-virtual {v0}, Lcom/kuaishou/weapon/p0/t;->b()V

    .line 783
    .line 784
    .line 785
    :cond_20
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 786
    invoke-static {}, Lcom/kuaishou/weapon/p0/WeaponHI;->iD()V

    .line 787
    .line 788
    .line 789
    return-void

    .line 790
    :catchall_1
    move-exception v0

    .line 791
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 792
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 793
    :catchall_2
    :try_start_7
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/u;->k:Lcom/kuaishou/weapon/p0/q;

    .line 794
    .line 795
    invoke-virtual {v0}, Lcom/kuaishou/weapon/p0/q;->c()V

    .line 796
    .line 797
    .line 798
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/u;->l:Lcom/kuaishou/weapon/p0/t;

    .line 799
    .line 800
    invoke-virtual {v0}, Lcom/kuaishou/weapon/p0/t;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 801
    .line 802
    .line 803
    invoke-static {}, Lcom/kuaishou/weapon/p0/WeaponHI;->iD()V

    .line 804
    .line 805
    .line 806
    return-void

    .line 807
    :catchall_3
    move-exception v0

    .line 808
    invoke-static {}, Lcom/kuaishou/weapon/p0/WeaponHI;->iD()V

    .line 809
    .line 810
    .line 811
    throw v0
.end method
