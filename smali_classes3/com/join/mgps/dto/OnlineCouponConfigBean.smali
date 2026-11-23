.class public Lcom/join/mgps/dto/OnlineCouponConfigBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/join/mgps/dto/OnlineCouponConfigBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gameExitSwitch:Z

.field private gameStartUpSwitch:Z

.field private homePageSwitch:Z

.field private inTimePeriod:Z

.field private locType:I

.field private popup:Z

.field private received:Z

.field private redPacketHint:Ljava/lang/String;

.field private redPacketJumpUrl:Ljava/lang/String;

.field private redPacketSubHint:Ljava/lang/String;

.field private tabHint:Ljava/lang/String;

.field private tabJumpUrl:Ljava/lang/String;

.field private tabSwitch:Z

.field private timePeriodMark:Ljava/lang/String;

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/OnlineCouponConfigBean$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/OnlineCouponConfigBean$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->locType:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->popup:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketHint:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketSubHint:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketJumpUrl:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabJumpUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabHint:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->uid:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameExitSwitch:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameStartUpSwitch:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->homePageSwitch:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabSwitch:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->inTimePeriod:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->timePeriodMark:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->received:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->locType:I

    .line 2
    .line 3
    return v0
.end method

.method public getRedPacketHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRedPacketJumpUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketJumpUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRedPacketSubHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketSubHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTabHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTabJumpUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabJumpUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimePeriodMark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->timePeriodMark:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public isGameExitSwitch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameExitSwitch:Z

    .line 2
    .line 3
    return v0
.end method

.method public isGameStartUpSwitch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameStartUpSwitch:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHomePageSwitch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->homePageSwitch:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInTimePeriod()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->inTimePeriod:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPopup()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->popup:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReceived()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->received:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTabSwitch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabSwitch:Z

    .line 2
    .line 3
    return v0
.end method

.method public setGameExitSwitch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameExitSwitch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameExitSwitch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGameStartUpSwitch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameStartUpSwitch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameStartUpSwitch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHomePageSwitch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homePageSwitch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->homePageSwitch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInTimePeriod(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inTimePeriod"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->inTimePeriod:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLocType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->locType:I

    .line 2
    .line 3
    return-void
.end method

.method public setPopup(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popup"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->popup:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReceived(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "received"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->received:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRedPacketHint(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redPacketHint"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketHint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRedPacketJumpUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redPacketJumpUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketJumpUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRedPacketSubHint(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redPacketSubHint"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketSubHint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTabHint(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabHint"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabHint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTabJumpUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabJumpUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabJumpUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTabSwitch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabSwitch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabSwitch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTimePeriodMark(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timePeriodMark"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->timePeriodMark:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->locType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->popup:Z

    .line 7
    .line 8
    int-to-byte p2, p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketHint:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketSubHint:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->redPacketJumpUrl:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabJumpUrl:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabHint:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->uid:I

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameExitSwitch:Z

    .line 43
    .line 44
    int-to-byte p2, p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 46
    .line 47
    .line 48
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->gameStartUpSwitch:Z

    .line 49
    .line 50
    int-to-byte p2, p2

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 52
    .line 53
    .line 54
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->homePageSwitch:Z

    .line 55
    .line 56
    int-to-byte p2, p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 58
    .line 59
    .line 60
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->tabSwitch:Z

    .line 61
    .line 62
    int-to-byte p2, p2

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    .line 65
    .line 66
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->inTimePeriod:Z

    .line 67
    .line 68
    int-to-byte p2, p2

    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->timePeriodMark:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-boolean p2, p0, Lcom/join/mgps/dto/OnlineCouponConfigBean;->received:Z

    .line 78
    .line 79
    int-to-byte p2, p2

    .line 80
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
