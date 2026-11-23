.class public Lcom/baidu/passbqt/http/MultipartHashMap;
.super Lcom/baidu/passbqt/http/HttpHashMap;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/passbqt/NoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/passbqt/http/MultipartHashMap$FileWrapper;
    }
.end annotation


# instance fields
.field public a:Lcom/baidu/passbqt/http/MultipartHashMap$FileWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/passbqt/http/HttpHashMap;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/passbqt/http/MultipartHashMap$FileWrapper;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/baidu/passbqt/http/MultipartHashMap$FileWrapper;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/baidu/passbqt/http/MultipartHashMap;->a:Lcom/baidu/passbqt/http/MultipartHashMap$FileWrapper;

    .line 7
    .line 8
    return-void
.end method
