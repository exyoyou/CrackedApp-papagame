.class public Lcom/join/mgps/dto/ReportIssueBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private game_name:Ljava/lang/String;

.field private issue_id:Ljava/lang/String;


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
.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ReportIssueBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIssue_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ReportIssueBean;->issue_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ReportIssueBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIssue_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issue_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ReportIssueBean;->issue_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
