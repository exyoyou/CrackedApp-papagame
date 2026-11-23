.class Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;-><init>(Landroid/app/Activity;[[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;


# direct methods
.method constructor <init>(Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb$1;->this$0:Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb$1;->this$0:Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method
