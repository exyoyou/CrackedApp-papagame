.class public Lcom/haima/hmcp/beans/ButtonBarrier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/haima/hmcp/beans/ButtonBarrier;",
        ">;"
    }
.end annotation


# static fields
.field public static final OP_MOUSE_BUTTON_LEFT:I = 0x200

.field public static final OP_MOUSE_BUTTON_MID:I = 0x201

.field public static final OP_MOUSE_BUTTON_RIGHT:I = 0x202


# instance fields
.field public isConsumed:Z

.field public keyCode:I

.field public sendRomCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/ButtonBarrier;->isConsumed:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/ButtonBarrier;->isConsumed:Z

    .line 5
    iput p1, p0, Lcom/haima/hmcp/beans/ButtonBarrier;->keyCode:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/ButtonBarrier;->isConsumed:Z

    .line 8
    iput p1, p0, Lcom/haima/hmcp/beans/ButtonBarrier;->keyCode:I

    .line 9
    iput p2, p0, Lcom/haima/hmcp/beans/ButtonBarrier;->sendRomCode:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/haima/hmcp/beans/ButtonBarrier;)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/haima/hmcp/beans/ButtonBarrier;->keyCode:I

    iget p1, p1, Lcom/haima/hmcp/beans/ButtonBarrier;->keyCode:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/haima/hmcp/beans/ButtonBarrier;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/beans/ButtonBarrier;->compareTo(Lcom/haima/hmcp/beans/ButtonBarrier;)I

    move-result p1

    return p1
.end method

.method public getSendRomCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/ButtonBarrier;->sendRomCode:I

    .line 2
    .line 3
    return v0
.end method

.method public setSendRomCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/ButtonBarrier;->sendRomCode:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ButtonBarrier{keyCode="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/haima/hmcp/beans/ButtonBarrier;->keyCode:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", sendRomCode="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/haima/hmcp/beans/ButtonBarrier;->sendRomCode:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", isConsumed="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/ButtonBarrier;->isConsumed:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x7d

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
