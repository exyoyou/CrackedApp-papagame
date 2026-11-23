.class public Lcom/byazt/cc/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ip/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/a;->c(Lcom/byazt/dj/tt;Lcom/byazt/nh/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic tt:Lcom/byazt/cc/a;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a;Lcom/byazt/dj/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$1;->tt:Lcom/byazt/cc/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cc/a$1;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ip/tt;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/ha/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/cc/a$1;->c:Lcom/byazt/dj/tt;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/byazt/ha/tt;

    .line 10
    .line 11
    iput-object v0, p1, Lcom/byazt/ha/tt;->c:Lcom/byazt/dj/tt;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    iput v0, p1, Lcom/byazt/ip/c;->sp:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method
