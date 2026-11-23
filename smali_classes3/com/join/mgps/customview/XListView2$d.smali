.class Lcom/join/mgps/customview/XListView2$d;
.super Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/XListView2;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/XListView2;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/XListView2;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/XListView2$d;->a:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appBarLayout",
            "state"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/XListView2$d;->a:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/join/mgps/customview/XListView2;->c(Lcom/join/mgps/customview/XListView2;Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 4
    .line 5
    .line 6
    return-void
.end method
