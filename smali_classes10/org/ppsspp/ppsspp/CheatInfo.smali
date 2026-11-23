.class public Lorg/ppsspp/ppsspp/CheatInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cheatName:Ljava/lang/String;

.field public i_default:I

.field public nVipLevel:I

.field public off:I

.field public option:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field public optionNum:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->i_default:I

    .line 10
    .line 11
    iput v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->nVipLevel:I

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->option:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->optionNum:I

    .line 22
    .line 23
    iput-object p3, p0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 24
    .line 25
    iput p2, p0, Lorg/ppsspp/ppsspp/CheatInfo;->i_default:I

    .line 26
    .line 27
    iput p1, p0, Lorg/ppsspp/ppsspp/CheatInfo;->nVipLevel:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/CheatInfo;->getCheatName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/CheatInfo;->getCheatName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getCheatName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getI_default()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->i_default:I

    .line 2
    .line 3
    return v0
.end method

.method public getOff()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 2
    .line 3
    return v0
.end method

.method public getOption()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->option:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOptionNum()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->optionNum:I

    .line 2
    .line 3
    return v0
.end method

.method public getnVipLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->nVipLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0}, Lorg/ppsspp/ppsspp/CheatInfo;->getCheatName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public setCheatName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setI_default(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/ppsspp/ppsspp/CheatInfo;->i_default:I

    .line 2
    .line 3
    return-void
.end method

.method public setOff(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 2
    .line 3
    return-void
.end method

.method public setOption(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/CheatInfo;->option:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setOptionNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/ppsspp/ppsspp/CheatInfo;->optionNum:I

    .line 2
    .line 3
    return-void
.end method

.method public setnVipLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/ppsspp/ppsspp/CheatInfo;->nVipLevel:I

    .line 2
    .line 3
    return-void
.end method
