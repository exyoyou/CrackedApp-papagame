.class public Lcom/byazt/vvt/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ip/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x64
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vvt/c;->c(Ljava/lang/String;Lcom/byazt/dj/tt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic tt:I

.field public final synthetic ve:Lcom/byazt/vvt/c;


# direct methods
.method public constructor <init>(Lcom/byazt/vvt/c;Lcom/byazt/dj/tt;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vvt/c$5;->ve:Lcom/byazt/vvt/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/vvt/c$5;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/vvt/c$5;->tt:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ip/tt;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/byazt/ha/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ha/tt;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/vvt/c$5;->c:Lcom/byazt/dj/tt;

    .line 8
    .line 9
    iput-object v0, p1, Lcom/byazt/ha/tt;->c:Lcom/byazt/dj/tt;

    .line 10
    .line 11
    iget v1, p0, Lcom/byazt/vvt/c$5;->tt:I

    .line 12
    .line 13
    iput v1, p1, Lcom/byazt/ip/c;->sp:I

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    return-void
.end method
