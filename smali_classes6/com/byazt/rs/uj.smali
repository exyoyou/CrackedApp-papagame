.class public Lcom/byazt/rs/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x288,
        0xf
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final tt:Ljava/lang/String;

.field public final uj:Ljava/lang/String;

.field public final ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/rs/uj;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/rs/uj;->tt:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/rs/uj;->ve:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p4, "img_0.png"

    .line 14
    .line 15
    :goto_0
    iput-object p4, p0, Lcom/byazt/rs/uj;->uj:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rs/uj;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rs/uj;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rs/uj;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
