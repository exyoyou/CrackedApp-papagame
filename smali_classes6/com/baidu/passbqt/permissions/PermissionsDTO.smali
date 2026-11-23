.class public Lcom/baidu/passbqt/permissions/PermissionsDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/passbqt/NoProguard;


# instance fields
.field public a:Landroid/content/Context;

.field public b:[Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "\u7ee7\u7eed"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/baidu/passbqt/permissions/PermissionsDTO;->f:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "\u5173\u95ed"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/baidu/passbqt/permissions/PermissionsDTO;->g:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/baidu/passbqt/permissions/PermissionsDTO;->h:Z

    .line 14
    .line 15
    const/16 v0, 0x64

    .line 16
    .line 17
    iput v0, p0, Lcom/baidu/passbqt/permissions/PermissionsDTO;->i:I

    .line 18
    .line 19
    return-void
.end method
