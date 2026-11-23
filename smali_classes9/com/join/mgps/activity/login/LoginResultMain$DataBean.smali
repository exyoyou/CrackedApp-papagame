.class public Lcom/join/mgps/activity/login/LoginResultMain$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/login/LoginResultMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private is_new_members:Z


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
.method public isIs_new_members()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginResultMain$DataBean;->is_new_members:Z

    .line 2
    .line 3
    return v0
.end method

.method public setIs_new_members(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_new_members"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/login/LoginResultMain$DataBean;->is_new_members:Z

    .line 2
    .line 3
    return-void
.end method
