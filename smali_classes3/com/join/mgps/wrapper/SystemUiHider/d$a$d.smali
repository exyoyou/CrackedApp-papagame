.class Lcom/join/mgps/wrapper/SystemUiHider/d$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/wrapper/SystemUiHider/d$a;-><init>(Landroid/content/Context;[[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/wrapper/SystemUiHider/d$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/wrapper/SystemUiHider/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a$d;->b:Lcom/join/mgps/wrapper/SystemUiHider/d$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a$d;->b:Lcom/join/mgps/wrapper/SystemUiHider/d$a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/wrapper/SystemUiHider/d$a;->a(Lcom/join/mgps/wrapper/SystemUiHider/d$a;)Landroid/webkit/WebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
