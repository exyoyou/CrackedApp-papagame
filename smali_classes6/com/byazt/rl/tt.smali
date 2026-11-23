.class public Lcom/byazt/rl/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x75,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/rl/tt$c;
    }
.end annotation


# instance fields
.field public c:Z

.field public tt:I

.field public uj:Lcom/bykv/vk/openvk/api/proto/ValueSet;

.field public ve:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/rl/tt;->c:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/byazt/rl/tt;->tt:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/byazt/rl/tt;->ve:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/rl/tt;->uj:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    .line 14
    .line 15
    return-void
.end method

.method public static final c()Lcom/byazt/rl/tt;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/rl/tt;

    invoke-direct {v0}, Lcom/byazt/rl/tt;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c(I)Lcom/byazt/rl/tt;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/rl/tt;->tt:I

    return-object p0
.end method

.method public c(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/byazt/rl/tt;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/rl/tt;->uj:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/rl/tt;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/rl/tt;->ve:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/rl/tt;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/rl/tt;->c:Z

    return-object p0
.end method

.method public tt()Lcom/bykv/vk/openvk/api/proto/Result;
    .locals 7

    .line 1
    new-instance v6, Lcom/byazt/rl/tt$c;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/byazt/rl/tt;->c:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/byazt/rl/tt;->tt:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/rl/tt;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/rl/tt;->uj:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/rl/ve;->c()Lcom/byazt/rl/ve;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    move-object v4, v0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v0, v6

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/byazt/rl/tt$c;-><init>(ZILjava/lang/String;Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/byazt/rl/tt$1;)V

    .line 25
    .line 26
    .line 27
    return-object v6
.end method
