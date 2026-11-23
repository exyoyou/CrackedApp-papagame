.class public Lorg/ppsspp/ppsspp/EditCheatInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public GBA_IS_GS:Z

.field public cheatName:Ljava/lang/String;

.field public cheatValue:Ljava/lang/String;

.field public isEnable:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 9
    .line 10
    iput-boolean p2, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->GBA_IS_GS:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 8
    .line 9
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->GBA_IS_GS:Z

    .line 10
    .line 11
    iget-boolean v2, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->GBA_IS_GS:Z

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_1
    return v1
.end method

.method public getCheatName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCheatValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    iget-boolean v1, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->GBA_IS_GS:Z

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x2

    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public isGBA_IS_GS()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->GBA_IS_GS:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCheatName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCheatValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGBA_IS_GS(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->GBA_IS_GS:Z

    .line 2
    .line 3
    return-void
.end method
