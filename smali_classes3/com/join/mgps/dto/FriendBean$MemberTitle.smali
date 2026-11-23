.class public Lcom/join/mgps/dto/FriendBean$MemberTitle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/FriendBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberTitle"
.end annotation


# instance fields
.field private battleTitle:Ljava/lang/String;

.field private battleTitleColor:Ljava/lang/String;

.field private level:I


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
.method public getBattleTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean$MemberTitle;->battleTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean$MemberTitle;->battleTitleColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean$MemberTitle;->level:I

    .line 2
    .line 3
    return v0
.end method

.method public setBattleTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battleTitle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean$MemberTitle;->battleTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBattleTitleColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battleTitleColor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean$MemberTitle;->battleTitleColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean$MemberTitle;->level:I

    .line 2
    .line 3
    return-void
.end method
