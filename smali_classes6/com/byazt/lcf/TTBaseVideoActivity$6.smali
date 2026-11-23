.class public Lcom/byazt/lcf/TTBaseVideoActivity$6;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26,
        0x653
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lcf/TTBaseVideoActivity;->tt(Lcom/byazt/qq/da;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:[Z

.field public final synthetic tt:Lcom/byazt/lcf/TTBaseVideoActivity;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;JJ[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$6;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/byazt/lcf/TTBaseVideoActivity$6;->c:[Z

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$6;->c:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$6;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
