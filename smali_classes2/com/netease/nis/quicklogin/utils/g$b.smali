.class public Lcom/netease/nis/quicklogin/utils/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/quicklogin/utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/utils/g$b$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Lcom/netease/nis/quicklogin/utils/g$b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "quickpass"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/g$b;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "Android"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/g$b;->d:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "v1"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/g$b;->i:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Lcom/netease/nis/quicklogin/utils/g$b$a;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/netease/nis/quicklogin/utils/g$b$a;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/g$b;->j:Lcom/netease/nis/quicklogin/utils/g$b$a;

    .line 22
    .line 23
    return-void
.end method
