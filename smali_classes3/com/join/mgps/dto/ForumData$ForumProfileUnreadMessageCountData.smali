.class public Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumProfileUnreadMessageCountData"
.end annotation


# instance fields
.field private unread:I


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
.method public getUnread()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;->unread:I

    .line 2
    .line 3
    return v0
.end method

.method public setUnread(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unread"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;->unread:I

    .line 2
    .line 3
    return-void
.end method
