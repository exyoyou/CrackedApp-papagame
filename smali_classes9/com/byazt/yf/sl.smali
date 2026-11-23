.class public abstract Lcom/byazt/yf/sl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0x9e
    }
.end annotation


# instance fields
.field public c:I

.field public tt:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;


# direct methods
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
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/yf/sl;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/yf/sl;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    const-string v0, ""

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_1
    const-string v0, "xiaomi"

    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_2
    const-string v0, "klevin"

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_3
    const-string v0, "sigmob"

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_4
    const-string v0, "ks"

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_5
    const-string v0, "baidu"

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_6
    const-string v0, "unity"

    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_7
    const-string v0, "mintegral"

    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_8
    const-string v0, "gdt"

    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_9
    const-string v0, "pangle"

    .line 34
    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public tt()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/sl;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/sl;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/sl;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
