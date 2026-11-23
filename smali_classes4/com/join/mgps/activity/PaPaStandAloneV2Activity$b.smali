.class Lcom/join/mgps/activity/PaPaStandAloneV2Activity$b;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/PaPaStandAloneV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PaPaStandAloneV2Activity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "fm"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity$b;->a:Lcom/join/mgps/activity/PaPaStandAloneV2Activity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->TITLE_PAPA_STANDALONE:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity$b;->a:Lcom/join/mgps/activity/PaPaStandAloneV2Activity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->access$100(Lcom/join/mgps/activity/PaPaStandAloneV2Activity;I)Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/activity/PaPaStandAloneV2Activity;->TITLE_PAPA_STANDALONE:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method
