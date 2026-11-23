.class Lcom/baidu/passbqt/http/MultipartHashMap$FileWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/passbqt/http/MultipartHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileWrapper"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/baidu/passbqt/http/MultipartHashMap$FileWrapper;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/baidu/passbqt/http/MultipartHashMap$FileWrapper;->d:Ljava/io/InputStream;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/baidu/passbqt/http/MultipartHashMap$FileWrapper;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/baidu/passbqt/http/MultipartHashMap$FileWrapper;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/passbqt/http/MultipartHashMap$FileWrapper;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "nofilename"

    .line 7
    .line 8
    return-object v0
.end method
