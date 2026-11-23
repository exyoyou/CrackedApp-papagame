.class public final Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation build Ldagger/hilt/android/lifecycle/HiltViewModel;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 6 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 7 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,1614:1\n1563#2:1615\n1634#2,3:1616\n1869#2:1619\n295#2,2:1620\n1870#2:1622\n295#2,2:1623\n295#2,2:1625\n295#2,2:1627\n1617#2,9:1629\n1869#2:1638\n1870#2:1640\n1626#2:1641\n1869#2,2:1642\n295#2,2:1648\n295#2,2:1701\n1#3:1639\n1#3:1651\n216#4,2:1644\n216#4,2:1646\n10#5:1650\n10#5:1700\n108#6:1652\n80#6,22:1653\n108#6:1675\n80#6,22:1676\n470#7:1698\n470#7:1699\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel\n*L\n345#1:1615\n345#1:1616,3\n363#1:1619\n365#1:1620,2\n363#1:1622\n432#1:1623,2\n436#1:1625,2\n449#1:1627,2\n639#1:1629,9\n639#1:1638\n639#1:1640\n639#1:1641\n712#1:1642,2\n920#1:1648,2\n1404#1:1701,2\n639#1:1639\n756#1:1644,2\n769#1:1646,2\n1151#1:1650\n1530#1:1700\n1448#1:1652\n1448#1:1653,22\n1463#1:1675\n1463#1:1676,22\n1475#1:1698\n1500#1:1699\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\"\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0013\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0007\u0010\u0081\u0001\u001a\u00020\u0011J\u0013\u0010\u0082\u0001\u001a\u00030\u0083\u00012\t\u0008\u0002\u0010\u0084\u0001\u001a\u00020\u0011J\t\u0010\u0085\u0001\u001a\u0004\u0018\u00010NJ\u0012\u0010\u0086\u0001\u001a\u00030\u0083\u00012\u0008\u0010\u0087\u0001\u001a\u00030\u0088\u0001J\u0008\u0010\u0089\u0001\u001a\u00030\u0083\u0001J\u0008\u0010\u008a\u0001\u001a\u00030\u0083\u0001J\u0013\u0010\u008b\u0001\u001a\u00020\u00112\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0088\u0001J\u0008\u0010\u008d\u0001\u001a\u00030\u0083\u0001J\u0008\u0010\u008e\u0001\u001a\u00030\u0083\u0001J\u0011\u0010\u008f\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u0090\u0001\u001a\u00020\u000eJ\u0007\u0010\u0091\u0001\u001a\u00020\u0011J\u0008\u0010\u0092\u0001\u001a\u00030\u0083\u0001J$\u0010\u0093\u0001\u001a\u00030\u0083\u0001\"\n\u0008\u0000\u0010\u0094\u0001*\u00030\u0095\u00012\u0008\u0010\u0096\u0001\u001a\u0003H\u0094\u0001\u00a2\u0006\u0003\u0010\u0097\u0001J\u0008\u0010\u0098\u0001\u001a\u00030\u0083\u0001J\u0012\u0010\u0099\u0001\u001a\u00020\u00112\t\u0010\u009a\u0001\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u009b\u0001\u001a\u00030\u0083\u0001J\u0010\u0010\u009c\u0001\u001a\u00030\u0083\u00012\u0006\u0010\u0002\u001a\u00020\u0003J&\u0010\u009d\u0001\u001a\u00030\u0083\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010E\u001a\u00020\n2\n\u0008\u0002\u0010J\u001a\u0004\u0018\u00010\nJ\u001e\u0010\u009e\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u009f\u0001\u001a\u00020\n2\u000b\u0008\u0002\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\nJ\u0013\u0010\u00a1\u0001\u001a\u00030\u0083\u00012\t\u0010\u00a2\u0001\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u00a3\u0001\u001a\u0004\u0018\u00010\u00172\u0007\u0010\u009f\u0001\u001a\u00020\nJ\u0011\u0010\u00a4\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00a5\u0001\u001a\u00020\u000eJ<\u0010\u00a6\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00a7\u0001\u001a\u00020 2)\u0010\u00a8\u0001\u001a$\u0012\u0018\u0012\u0016\u0018\u00010T\u00a2\u0006\u000f\u0008\u00aa\u0001\u0012\n\u0008\u00a0\u0001\u0012\u0005\u0008\u0008(\u00ab\u0001\u0012\u0005\u0012\u00030\u0083\u00010\u00a9\u0001J\u0011\u0010\u00ac\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00a7\u0001\u001a\u00020 J\u0011\u0010\u00ad\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00a7\u0001\u001a\u00020 J\u0014\u0010\u00bb\u0001\u001a\u00030\u0083\u00012\u0008\u0010\u00bc\u0001\u001a\u00030\u00b8\u0001H\u0002J\u0014\u0010\u00bd\u0001\u001a\u00030\u0083\u00012\u0008\u0010\u00bc\u0001\u001a\u00030\u00b8\u0001H\u0002J \u0010\u00be\u0001\u001a\u00030\u0083\u00012\u0016\u0010\u00a8\u0001\u001a\u0011\u0012\u0005\u0012\u00030\u00b8\u0001\u0012\u0005\u0012\u00030\u0083\u00010\u00a9\u0001J\u001c\u0010\u00bf\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00c0\u0001\u001a\u00020\n2\u0007\u0010\u00c1\u0001\u001a\u00020\u0011H\u0002J\n\u0010\u00c2\u0001\u001a\u00030\u0083\u0001H\u0002J!\u0010\u00c3\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00a0\u0001\u001a\u00020\n2\u000e\u0010\u00c4\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b0\u00010\u001aJ1\u0010\u00c5\u0001\u001a\u00030\u0083\u00012\u0015\u0010\u00c6\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u00b0\u0001\u0012\u0004\u0012\u00020\n0\u00b2\u00012\u000e\u0010\u00c4\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b0\u00010\u001aH\u0002J\n\u0010\u00c7\u0001\u001a\u00030\u0083\u0001H\u0002J#\u0010\u00ca\u0001\u001a\n\u0012\u0005\u0012\u00030\u00b0\u00010\u00c9\u00012\u0007\u0010\u00cb\u0001\u001a\u00020\'2\u0007\u0010\u00cc\u0001\u001a\u00020\'H\u0002J&\u0010\u00cd\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0h2\u000f\u0010\u00c4\u0001\u001a\n\u0012\u0005\u0012\u00030\u00b0\u00010\u00c9\u0001H\u0002J#\u0010\u00ce\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00c0\u0001\u001a\u00020\n2\u0007\u0010\u00cb\u0001\u001a\u00020\'2\u0007\u0010\u00cc\u0001\u001a\u00020\'J\u001a\u0010\u00cf\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00c0\u0001\u001a\u00020\n2\u0007\u0010\u00c1\u0001\u001a\u00020\u0011J\u0011\u0010\u00d0\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00d1\u0001\u001a\u00020\nJ\u0086\u0001\u0010\u00d2\u0001\u001a\u00030\u0083\u00012\t\u0010\u00d1\u0001\u001a\u0004\u0018\u00010\n2o\u0010\u00a8\u0001\u001aj\u0012\u0016\u0012\u00140\u000e\u00a2\u0006\u000f\u0008\u00aa\u0001\u0012\n\u0008\u00a0\u0001\u0012\u0005\u0008\u0008(\u00d4\u0001\u0012\u0016\u0012\u00140\u000e\u00a2\u0006\u000f\u0008\u00aa\u0001\u0012\n\u0008\u00a0\u0001\u0012\u0005\u0008\u0008(\u00d5\u0001\u0012\u0016\u0012\u00140\u000e\u00a2\u0006\u000f\u0008\u00aa\u0001\u0012\n\u0008\u00a0\u0001\u0012\u0005\u0008\u0008(\u00d6\u0001\u0012\u0016\u0012\u00140\u000e\u00a2\u0006\u000f\u0008\u00aa\u0001\u0012\n\u0008\u00a0\u0001\u0012\u0005\u0008\u0008(\u00d7\u0001\u0012\u0005\u0012\u00030\u0083\u00010\u00d3\u0001H\u0002J\u0017\u0010\u00d8\u0001\u001a\u00030\u0083\u00012\r\u0010\u00d9\u0001\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001aJ\u0008\u0010\u00da\u0001\u001a\u00030\u0083\u0001J\u0010\u0010\u00db\u0001\u001a\u00020\u00112\u0007\u0010\u00dc\u0001\u001a\u00020 J\u0014\u0010\u00dd\u0001\u001a\u00020\n2\t\u0010\u00de\u0001\u001a\u0004\u0018\u00010\nH\u0002J\u0013\u0010\u00df\u0001\u001a\u00030\u0083\u00012\t\u0010\u00a7\u0001\u001a\u0004\u0018\u00010 J0\u0010\u00e0\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00a7\u0001\u001a\u00020 2\u001b\u0008\u0002\u0010\u00e1\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010T\u0012\u0005\u0012\u00030\u0083\u0001\u0018\u00010\u00a9\u0001H\u0002J\r\u0010\u00e3\u0001\u001a\u0008\u0012\u0004\u0012\u00020T0\u001aJG\u0010\u00e4\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00a0\u0001\u001a\u00020\n2\u0007\u0010\u00e5\u0001\u001a\u00020\u000e2\u000b\u0008\u0002\u0010\u00e6\u0001\u001a\u0004\u0018\u00010\n2\u000b\u0008\u0002\u0010\u00e7\u0001\u001a\u0004\u0018\u00010\u000e2\u000b\u0008\u0002\u0010\u00e8\u0001\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0003\u0010\u00e9\u0001J\u0013\u0010\u00ea\u0001\u001a\u00030\u0083\u00012\t\u0010\u00a7\u0001\u001a\u0004\u0018\u00010 J,\u0010\u00eb\u0001\u001a\u00030\u0083\u00012\t\u0010\u00a7\u0001\u001a\u0004\u0018\u00010 2\u0017\u0008\u0002\u0010\u00ec\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0005\u0012\u00030\u0083\u00010\u00a9\u0001J\u001a\u0010\u00ed\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00e7\u0001\u001a\u00020\u000e2\u0007\u0010\u00e8\u0001\u001a\u00020\u000eJ\u0008\u0010\u00ee\u0001\u001a\u00030\u0083\u0001J\u0013\u0010\u00ef\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00f0\u0001\u001a\u00020TH\u0002J\u0013\u0010\u00f1\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u00f0\u0001\u001a\u00020TH\u0002J\u0008\u0010\u00f2\u0001\u001a\u00030\u0083\u0001J\t\u0010\u00f3\u0001\u001a\u00020\nH\u0002J\u0008\u0010\u00f4\u0001\u001a\u00030\u0083\u0001J\u0008\u0010\u00f5\u0001\u001a\u00030\u0083\u0001J\u0007\u0010\u00f6\u0001\u001a\u00020\u0011J\u0007\u0010\u00f7\u0001\u001a\u00020\nJ\u0007\u0010\u00f8\u0001\u001a\u000206J\u0010\u0010\u00f9\u0001\u001a\u00020\n2\u0007\u0010\u00fa\u0001\u001a\u000206J\u0010\u0010\u00fb\u0001\u001a\u00020\n2\u0007\u0010\u00fa\u0001\u001a\u000206J\u001a\u0010\u00fb\u0001\u001a\u00030\u00fc\u00012\u0007\u0010\u00fa\u0001\u001a\u0002062\u0007\u0010\u00fd\u0001\u001a\u00020\u0011J\u0008\u0010\u00fe\u0001\u001a\u00030\u0083\u0001J\t\u0010\u00ff\u0001\u001a\u0004\u0018\u00010YR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000cR\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000cR\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000cR\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000cR\u001d\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u001a0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u000cR\u001d\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001a0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u000cR\u0019\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u000cR\u001d\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001a0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u000cR\u001d\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001a0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u000cR\u0017\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\'0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u000cR\u0017\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u000cR\u0017\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u000cR\u0017\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u000cR\u0017\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u000cR\u0019\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u000cR\u0017\u00103\u001a\u0008\u0012\u0004\u0012\u00020\'0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u000cR\u0017\u00105\u001a\u0008\u0012\u0004\u0012\u0002060\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010\u000cR\u0017\u00108\u001a\u0008\u0012\u0004\u0012\u0002060\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\u000cR\u0017\u0010:\u001a\u0008\u0012\u0004\u0012\u0002060\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010\u000cR\u0019\u0010<\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010=0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010\u000cR\u0017\u0010?\u001a\u0008\u0012\u0004\u0012\u00020@0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010\u000cR\u0017\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010\u000cR\u0017\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010\u000cR\u001a\u0010E\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u001a\u0010J\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010G\"\u0004\u0008L\u0010IR\u0010\u0010M\u001a\u0004\u0018\u00010NX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010O\u001a\u0004\u0018\u00010PX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010Q\u001a\u0004\u0018\u00010RX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010S\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010T0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010\u000c\"\u0004\u0008V\u0010WR&\u0010X\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020Y0\u001a0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010\u000c\"\u0004\u0008[\u0010WR\"\u0010\\\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010T0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010\u000c\"\u0004\u0008^\u0010WR&\u0010_\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020Y0`0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010\u000c\"\u0004\u0008b\u0010WR\u0014\u0010c\u001a\u0008\u0012\u0004\u0012\u00020T0`X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010d\u001a\u00020\u000eX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008e\u0010fR\u001a\u0010g\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0hX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010i\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010j\u001a\u0008\u0012\u0004\u0012\u00020\u00110\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008k\u0010\u000c\"\u0004\u0008l\u0010WR \u0010m\u001a\u0008\u0012\u0004\u0012\u00020n0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008o\u0010\u000c\"\u0004\u0008p\u0010WR \u0010q\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008r\u0010\u000c\"\u0004\u0008s\u0010WR\"\u0010t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010u0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008v\u0010\u000c\"\u0004\u0008w\u0010WR\u0010\u0010x\u001a\u0004\u0018\u00010yX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010z\u001a\u00020{X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010|\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010~0}\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u007f\u0010\u0080\u0001R\u001d\u0010\u00ae\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u00b0\u0001\u0012\u0004\u0012\u00020\u000e0\u00af\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u00b1\u0001\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0005\u0012\u00030\u0088\u00010\u00b2\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u00b3\u0001\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0005\u0012\u00030\u00b4\u00010\u00b2\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u00b5\u0001\u001a\u000f\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00110\u00af\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u00b6\u0001\u001a\n\u0012\u0005\u0012\u00030\u00b8\u00010\u00b7\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u00b9\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00110\u00af\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u00ba\u0001\u001a\u001b\u0012\u0004\u0012\u00020\n\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0h0\u00af\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u00c8\u0001\u001a\u0017\u0012\u0004\u0012\u00020\n\u0012\u000c\u0012\n\u0012\u0005\u0012\u00030\u00b0\u00010\u00c9\u00010\u00af\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u00e2\u0001\u001a\u000f\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020T0\u00af\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0080\u0002"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "toast",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getToast",
        "()Landroidx/lifecycle/MutableLiveData;",
        "brightness",
        "",
        "getBrightness",
        "mute",
        "",
        "getMute",
        "gameRatio",
        "getGameRatio",
        "isLatencyOn",
        "currentResolution",
        "Lcom/haima/hmcp/beans/ResolutionInfo;",
        "getCurrentResolution",
        "resolutionList",
        "",
        "getResolutionList",
        "pictureSettingList",
        "Lcom/join/mgps/dto/hmcloud/PictureSetting;",
        "getPictureSettingList",
        "currentKeyType",
        "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
        "getCurrentKeyType",
        "keyTypeList",
        "getKeyTypeList",
        "templateList",
        "getTemplateList",
        "keyAlpha",
        "",
        "getKeyAlpha",
        "keyVibrate",
        "getKeyVibrate",
        "keyHide",
        "getKeyHide",
        "pinchToZoom",
        "getPinchToZoom",
        "keyboardInput",
        "getKeyboardInput",
        "touchMode",
        "getTouchMode",
        "mouseSensitivity",
        "getMouseSensitivity",
        "remainTime",
        "",
        "getRemainTime",
        "playTime",
        "getPlayTime",
        "startPlayTime",
        "getStartPlayTime",
        "playtimeSummary",
        "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;",
        "getPlaytimeSummary",
        "menuAction",
        "Lcom/join/mgps/dto/hmcloud/HMMenuAction;",
        "getMenuAction",
        "isHmCloudPc",
        "handleSupport",
        "getHandleSupport",
        "gameId",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
        "cid",
        "getCid",
        "setCid",
        "gameCfgInfo",
        "Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;",
        "gameClient",
        "Lcom/join/mgps/rpc/RpcGameClient;",
        "accountClientV2",
        "Lcom/join/mgps/rpc/RpcAccountClientV2;",
        "currentOpConfig",
        "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
        "getCurrentOpConfig",
        "setCurrentOpConfig",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "currentKeys",
        "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
        "getCurrentKeys",
        "setCurrentKeys",
        "editOpConfig",
        "getEditOpConfig",
        "setEditOpConfig",
        "editKeys",
        "",
        "getEditKeys",
        "setEditKeys",
        "customOpConfigList",
        "maxOpConfigSize",
        "getMaxOpConfigSize",
        "()I",
        "layoutSize",
        "Lkotlin/Pair;",
        "lastResolutionInfo",
        "showKeyTips",
        "getShowKeyTips",
        "setShowKeyTips",
        "guideState",
        "Lcom/join/kotlin/module/hmcloud/bean/GuideState;",
        "getGuideState",
        "setGuideState",
        "inputDeviceSize",
        "getInputDeviceSize",
        "setInputDeviceSize",
        "inputDevice",
        "Lcom/papa/controller/core/ControllerManager$ControllerDevice;",
        "getInputDevice",
        "setInputDevice",
        "inputDeviceManager",
        "Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;",
        "inputEventMapper",
        "Lcom/join/kotlin/module/hmcloud/viewmodel/InputEventMapper;",
        "inputEventData",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/papa/controller/core/BaseEvent;",
        "getInputEventData",
        "()Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "useInputDevice",
        "guideNext",
        "",
        "done",
        "getCloudGamingCfgInfo",
        "performInputEvent",
        "event",
        "",
        "startInputMonitor",
        "stopInputMonitor",
        "dispatchEvent",
        "obj",
        "startVibrate",
        "loadGameLocalConfig",
        "setTouchMode",
        "mode",
        "isKeyboardEnable",
        "requestPlaytimeSummary",
        "setRatio",
        "T",
        "Landroid/view/ViewGroup$LayoutParams;",
        "lp",
        "(Landroid/view/ViewGroup$LayoutParams;)V",
        "getGameCfgInfoBySrv",
        "isLowResolution",
        "resolution",
        "updateResolutionInfo",
        "getScreenBrightness",
        "feedback",
        "onSwitchResolution",
        "id",
        "name",
        "onSwitchResolutionResult",
        "curId",
        "findResolutionById",
        "loadTemplate",
        "type",
        "loadTemplateKeys",
        "cfg",
        "callback",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "config",
        "resetEdit",
        "loadEditKeys",
        "directionMap",
        "",
        "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
        "gamepadMap",
        "",
        "keyboardMap",
        "Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;",
        "opEventPool",
        "opInputChannel",
        "Lkotlinx/coroutines/channels/Channel;",
        "Lcom/haima/hmcp/beans/HMInputOpData;",
        "gamepadEventPool",
        "trackballAxis",
        "appendCurrentTrackballState",
        "data",
        "enqueueOpInput",
        "collectOpInputData",
        "performGamepadKeyClick",
        "key",
        "pressed",
        "invalidateGamepadEvent",
        "performDirection",
        "dirs",
        "applyDirectionKeys",
        "map",
        "emitKeyboardOpPool",
        "trackballLastDirs",
        "",
        "trackballDirections",
        "x",
        "y",
        "dirsToStickValue",
        "performTrackball",
        "performClick",
        "addKey",
        "k",
        "computeNewSize",
        "Lkotlin/Function4;",
        "newX",
        "newY",
        "newWidth",
        "newHeight",
        "addCombineKey",
        "keys",
        "refreshKeyboardTypeList",
        "isAddKeyType",
        "item",
        "readJsonFromUrl",
        "url",
        "switchOpConfig",
        "loadOpConfig",
        "onResult",
        "cacheOpConfigMap",
        "getCustomOpConfig",
        "saveCustomOpConfig",
        "cfgType",
        "path",
        "width",
        "height",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "editCustomOpConfig",
        "deleteCustomOpConfig",
        "success",
        "setOpLayoutSize",
        "saveLastOpConfig",
        "fillOpConfig",
        "opConfig",
        "setOpConfig",
        "loadLastOpConfig",
        "getConfigRoot",
        "saveLastCommonConfig",
        "loadLastCommonConfig",
        "isCloudVip",
        "getLastResolutionId",
        "calcRemainTime",
        "formatRemainTime",
        "seconds",
        "formatSignTime",
        "Landroid/text/Spanned;",
        "isNewMember",
        "refreshKeys",
        "getGuideKeyPosition",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMCloudMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 6 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 7 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,1614:1\n1563#2:1615\n1634#2,3:1616\n1869#2:1619\n295#2,2:1620\n1870#2:1622\n295#2,2:1623\n295#2,2:1625\n295#2,2:1627\n1617#2,9:1629\n1869#2:1638\n1870#2:1640\n1626#2:1641\n1869#2,2:1642\n295#2,2:1648\n295#2,2:1701\n1#3:1639\n1#3:1651\n216#4,2:1644\n216#4,2:1646\n10#5:1650\n10#5:1700\n108#6:1652\n80#6,22:1653\n108#6:1675\n80#6,22:1676\n470#7:1698\n470#7:1699\n*S KotlinDebug\n*F\n+ 1 HMCloudMainViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel\n*L\n345#1:1615\n345#1:1616,3\n363#1:1619\n365#1:1620,2\n363#1:1622\n432#1:1623,2\n436#1:1625,2\n449#1:1627,2\n639#1:1629,9\n639#1:1638\n639#1:1640\n639#1:1641\n712#1:1642,2\n920#1:1648,2\n1404#1:1701,2\n639#1:1639\n756#1:1644,2\n769#1:1646,2\n1151#1:1650\n1530#1:1700\n1448#1:1652\n1448#1:1653,22\n1463#1:1675\n1463#1:1676,22\n1475#1:1698\n1500#1:1699\n*E\n"
    }
.end annotation


# instance fields
.field private accountClientV2:Lcom/join/mgps/rpc/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final brightness:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cacheOpConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentKeyType:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentKeys:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentOpConfig:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentResolution:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private customOpConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final directionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private editKeys:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private editOpConfig:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gameCfgInfo:Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gameClient:Lcom/join/mgps/rpc/k;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gameRatio:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gamepadEventPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gamepadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private guideState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/module/hmcloud/bean/GuideState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handleSupport:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inputDevice:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inputDeviceManager:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private inputDeviceSize:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inputEventData:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/papa/controller/core/BaseEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inputEventMapper:Lcom/join/kotlin/module/hmcloud/viewmodel/InputEventMapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isHmCloudPc:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isLatencyOn:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyAlpha:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyHide:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyTypeList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyVibrate:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyboardInput:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyboardMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastResolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layoutSize:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxOpConfigSize:I

.field private final menuAction:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/hmcloud/HMMenuAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mouseSensitivity:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mute:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final opEventPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final opInputChannel:Lkotlinx/coroutines/channels/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/g<",
            "Lcom/haima/hmcp/beans/HMInputOpData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pictureSettingList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/PictureSetting;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pinchToZoom:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final playTime:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final playtimeSummary:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final remainTime:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resolutionList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showKeyTips:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final startPlayTime:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final templateList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final toast:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final touchMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trackballAxis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trackballLastDirs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 3
    new-instance v1, Landroidx/lifecycle/SafeLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/SafeLiveData;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->toast:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v1, Landroidx/lifecycle/SafeLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/SafeLiveData;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->brightness:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->mute:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameRatio:Landroidx/lifecycle/MutableLiveData;

    .line 7
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isLatencyOn:Landroidx/lifecycle/MutableLiveData;

    .line 8
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentResolution:Landroidx/lifecycle/MutableLiveData;

    .line 9
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->resolutionList:Landroidx/lifecycle/MutableLiveData;

    .line 10
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->pictureSettingList:Landroidx/lifecycle/MutableLiveData;

    .line 11
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentKeyType:Landroidx/lifecycle/MutableLiveData;

    .line 12
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyTypeList:Landroidx/lifecycle/MutableLiveData;

    .line 13
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->templateList:Landroidx/lifecycle/MutableLiveData;

    .line 14
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    const v5, 0x3f333333    # 0.7f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v5}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyAlpha:Landroidx/lifecycle/MutableLiveData;

    .line 15
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyVibrate:Landroidx/lifecycle/MutableLiveData;

    .line 16
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyHide:Landroidx/lifecycle/MutableLiveData;

    .line 17
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->pinchToZoom:Landroidx/lifecycle/MutableLiveData;

    .line 18
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyboardInput:Landroidx/lifecycle/MutableLiveData;

    .line 19
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->touchMode:Landroidx/lifecycle/MutableLiveData;

    .line 20
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    const v4, 0x3fcccccd    # 1.6f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->mouseSensitivity:Landroidx/lifecycle/MutableLiveData;

    .line 21
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->remainTime:Landroidx/lifecycle/MutableLiveData;

    .line 22
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->playTime:Landroidx/lifecycle/MutableLiveData;

    .line 23
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->startPlayTime:Landroidx/lifecycle/MutableLiveData;

    .line 24
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->playtimeSummary:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->menuAction:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isHmCloudPc:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->handleSupport:Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    .line 28
    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameId:Ljava/lang/String;

    .line 29
    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->cid:Ljava/lang/String;

    .line 30
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentOpConfig:Landroidx/lifecycle/MutableLiveData;

    .line 31
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentKeys:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->editOpConfig:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->editKeys:Landroidx/lifecycle/MutableLiveData;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->customOpConfigList:Ljava/util/List;

    const/4 v1, 0x3

    .line 35
    iput v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->maxOpConfigSize:I

    const/4 v4, 0x0

    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    iput-object v6, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->layoutSize:Lkotlin/Pair;

    .line 37
    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v6, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v6, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->showKeyTips:Landroidx/lifecycle/MutableLiveData;

    .line 38
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    sget-object v6, Lcom/join/kotlin/module/hmcloud/bean/GuideState$None;->INSTANCE:Lcom/join/kotlin/module/hmcloud/bean/GuideState$None;

    invoke-direct {v2, v6}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->guideState:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2, v5}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDeviceSize:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDevice:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance v2, Lcom/join/kotlin/module/hmcloud/viewmodel/InputEventMapper;

    invoke-direct {v2, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/InputEventMapper;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)V

    iput-object v2, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputEventMapper:Lcom/join/kotlin/module/hmcloud/viewmodel/InputEventMapper;

    .line 42
    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v6, 0x1

    .line 43
    invoke-static {v6, v1, v2}, Lkotlinx/coroutines/flow/o;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/i;

    move-result-object v2

    iput-object v2, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputEventData:Lkotlinx/coroutines/flow/i;

    const/4 v2, 0x4

    new-array v7, v2, [Lkotlin/Pair;

    .line 44
    sget-object v8, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Up:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v4

    .line 45
    sget-object v8, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Down:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v6

    .line 46
    sget-object v8, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Left:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v9

    .line 47
    sget-object v8, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Right:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v1

    .line 48
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->directionMap:Ljava/util/Map;

    const/16 v7, 0xc

    new-array v8, v7, [Lkotlin/Pair;

    .line 49
    sget-object v11, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnX:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v11}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x4000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v8, v4

    .line 50
    sget-object v11, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnY:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v11}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v11

    const v12, 0x8000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v8, v6

    .line 51
    sget-object v11, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnA:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v11}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v8, v9

    .line 52
    sget-object v11, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v11}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v8, v1

    .line 53
    sget-object v11, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLT:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v11}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputLeftTrigger:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v8, v2

    .line 54
    sget-object v11, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v11}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x100

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v8, v12

    .line 55
    sget-object v11, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRT:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v11}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputRightTrigger:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v11, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v13, 0x6

    aput-object v11, v8, v13

    .line 56
    sget-object v11, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v11}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x200

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v11, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v14, 0x7

    aput-object v11, v8, v14

    .line 57
    sget-object v11, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLS:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v11}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v11

    const/16 v15, 0x40

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v8, v10

    .line 58
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRS:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x80

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v11, 0x9

    aput-object v3, v8, v11

    .line 59
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnSelect:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x20

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v3, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v15, 0xa

    aput-object v3, v8, v15

    .line 60
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnStart:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v17, 0x10

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v7, 0xb

    aput-object v3, v8, v7

    .line 61
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gamepadMap:Ljava/util/Map;

    const/16 v3, 0x54

    new-array v3, v3, [Lkotlin/Pair;

    .line 62
    sget-object v8, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkEscape:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v8}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v8

    sget-object v7, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkEscape:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v3, v4

    .line 63
    sget-object v7, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF1:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v7}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF1:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v3, v6

    .line 64
    sget-object v7, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF2:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v7}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF2:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v3, v9

    .line 65
    sget-object v7, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF3:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v7}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF3:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v3, v1

    .line 66
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF4:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF4:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v2

    .line 67
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF5:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF5:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v12

    .line 68
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF6:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF6:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v13

    .line 69
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF7:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF7:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v14

    .line 70
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF8:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF8:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v10

    .line 71
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF9:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF9:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v11

    .line 72
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF10:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF10:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v15

    .line 73
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF11:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF11:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v3, v2

    .line 74
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkF12:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkF12:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v3, v2

    .line 75
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkInsert:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkInsert:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v3, v2

    .line 76
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkDelete:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkDelete:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v3, v2

    .line 77
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkPageUp:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkPrior:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v3, v2

    .line 78
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkPageDown:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkNext:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v17

    .line 79
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkHome:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkHome:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v3, v2

    .line 80
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkEnd:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkEnd:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v3, v2

    .line 81
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkBackquote:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem3:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v3, v2

    .line 82
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key1:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey1:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v3, v2

    .line 83
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key2:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey2:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v3, v2

    .line 84
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key3:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey3:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v3, v2

    .line 85
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key4:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey4:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v3, v2

    .line 86
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key5:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey5:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v3, v2

    .line 87
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key6:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey6:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v3, v2

    .line 88
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key7:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey7:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v3, v2

    .line 89
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key8:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey8:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v3, v2

    .line 90
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key9:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey9:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v3, v2

    .line 91
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Key0:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKey0:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v3, v2

    .line 92
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkMinus:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkSubtract:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v3, v2

    .line 93
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkEquals:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOemPlus:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v3, v2

    .line 94
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkBackspace:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkBack:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v16

    .line 95
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkTab:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkTab:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v3, v2

    .line 96
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyQ:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyQ:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v3, v2

    .line 97
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyW:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyW:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v3, v2

    .line 98
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyE:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyE:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v3, v2

    .line 99
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyR:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyR:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v3, v2

    .line 100
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyT:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyT:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v3, v2

    .line 101
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyY:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyY:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v3, v2

    .line 102
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyU:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyU:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v3, v2

    .line 103
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyI:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyI:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v3, v2

    .line 104
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyO:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyO:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v3, v2

    .line 105
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyP:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyP:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v3, v2

    .line 106
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkBracketLeft:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem4:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v3, v2

    .line 107
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkBracketRight:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem6:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v3, v2

    .line 108
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkBackslash:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem5:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v3, v2

    .line 109
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkCapsLock:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkCapital:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v3, v2

    .line 110
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyA:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyA:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v3, v2

    .line 111
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyS:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyS:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v3, v2

    .line 112
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyD:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyD:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v3, v2

    .line 113
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyF:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyF:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v3, v2

    .line 114
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyG:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyG:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v3, v2

    .line 115
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyH:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyH:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v3, v2

    .line 116
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyJ:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyJ:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v3, v2

    .line 117
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyK:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyK:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v3, v2

    .line 118
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyL:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyL:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v3, v2

    .line 119
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkSemicolon:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem1:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v3, v2

    .line 120
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkQuote:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem7:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v3, v2

    .line 121
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkEnter:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkReturn:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v3, v2

    .line 122
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkShift:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkShift:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v3, v2

    .line 123
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyZ:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyZ:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v3, v2

    .line 124
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyX:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyX:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v3, v2

    .line 125
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyC:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyC:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v3, v2

    .line 126
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyV:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyV:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v3, v2

    .line 127
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyB:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v3, v2

    .line 128
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyN:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyN:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v3, v2

    .line 129
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyM:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyKeyM:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v3, v2

    .line 130
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkComma:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOemComma:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v3, v2

    .line 131
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkPeriod:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOemPeriod:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v3, v2

    .line 132
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkSlash:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkOem2:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v3, v2

    .line 133
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkCtrl:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkControl:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v3, v2

    .line 134
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkAlt:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkMenu:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v3, v2

    .line 135
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkWinLeft:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkLwin:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v3, v2

    .line 136
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkWinRight:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkRwin:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v3, v2

    .line 137
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkSpace:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkSpace:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v3, v2

    .line 138
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkUp:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkUp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v3, v2

    .line 139
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkDown:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkDown:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v3, v2

    .line 140
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkLeft:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkLeft:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v3, v2

    .line 141
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkRight:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpKeyVkRight:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v3, v2

    .line 142
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseLeft:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpMouseButtonLeft:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v3, v2

    .line 143
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseRight:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpMouseButtonRight:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v3, v2

    .line 144
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMiddle:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpMouseButtonMiddle:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v3, v2

    .line 145
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseWheel:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpMouseWheel:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v3, v2

    .line 146
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyboardMap:Ljava/util/Map;

    .line 147
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->opEventPool:Ljava/util/Map;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 148
    invoke-static {v1, v2, v2, v13, v2}, Lkotlinx/coroutines/channels/i;->d(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/g;

    move-result-object v1

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->opInputChannel:Lkotlinx/coroutines/channels/g;

    .line 149
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gamepadEventPool:Ljava/util/Map;

    new-array v1, v9, [Lkotlin/Pair;

    .line 150
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyL:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v4

    .line 151
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyR:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v6

    .line 152
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->trackballAxis:Ljava/util/Map;

    .line 153
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->trackballLastDirs:Ljava/util/Map;

    .line 154
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->cacheOpConfigMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->emitKeyboardOpPool$lambda$20(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeNewSize(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->computeNewSize(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$fillOpConfig(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->fillOpConfig(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getAccountClientV2$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Lcom/join/mgps/rpc/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCacheOpConfigMap$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->cacheOpConfigMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getConfigRoot(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getConfigRoot()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getGameCfgInfo$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameCfgInfo:Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGameClient$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Lcom/join/mgps/rpc/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameClient:Lcom/join/mgps/rpc/k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInputDeviceManager$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDeviceManager:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOpInputChannel$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Lkotlinx/coroutines/channels/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->opInputChannel:Lkotlinx/coroutines/channels/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$loadOpConfig(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$readJsonFromUrl(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->readJsonFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setAccountClientV2$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/rpc/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setGameCfgInfo$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameCfgInfo:Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setGameClient$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/rpc/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameClient:Lcom/join/mgps/rpc/k;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setLastResolutionInfo$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/haima/hmcp/beans/ResolutionInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->lastResolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setLayoutSize$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/Pair;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->layoutSize:Lkotlin/Pair;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setOpConfig(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->setOpConfig(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final appendCurrentTrackballState(Lcom/haima/hmcp/beans/HMInputOpData;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/haima/hmcp/beans/HMInputOpData;->opListArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "opListArray"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputOp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->trackballAxis:Ljava/util/Map;

    .line 42
    .line 43
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyL:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lkotlin/Pair;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_2
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Ljava/lang/Number;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    sget-object v4, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputThumbLx:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 91
    .line 92
    invoke-static {v0, p1, v4, v3}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->appendCurrentTrackballState$addAxis(Ljava/util/HashSet;Lcom/haima/hmcp/beans/HMInputOpData;Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;I)V

    .line 93
    .line 94
    .line 95
    sget-object v3, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputThumbLy:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 96
    .line 97
    invoke-static {v0, p1, v3, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->appendCurrentTrackballState$addAxis(Ljava/util/HashSet;Lcom/haima/hmcp/beans/HMInputOpData;Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->trackballAxis:Ljava/util/Map;

    .line 101
    .line 102
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyR:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Lkotlin/Pair;

    .line 113
    .line 114
    if-nez v1, :cond_3

    .line 115
    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :cond_3
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Ljava/lang/Number;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Ljava/lang/Number;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    sget-object v3, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputThumbRx:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 149
    .line 150
    invoke-static {v0, p1, v3, v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->appendCurrentTrackballState$addAxis(Ljava/util/HashSet;Lcom/haima/hmcp/beans/HMInputOpData;Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;I)V

    .line 151
    .line 152
    .line 153
    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputThumbRy:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 154
    .line 155
    invoke-static {v0, p1, v2, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->appendCurrentTrackballState$addAxis(Ljava/util/HashSet;Lcom/haima/hmcp/beans/HMInputOpData;Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;I)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method private static final appendCurrentTrackballState$addAxis(Ljava/util/HashSet;Lcom/haima/hmcp/beans/HMInputOpData;Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;",
            ">;",
            "Lcom/haima/hmcp/beans/HMInputOpData;",
            "Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputOp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 14
    .line 15
    iput p3, p0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->value:I

    .line 16
    .line 17
    iget-object p1, p1, Lcom/haima/hmcp/beans/HMInputOpData;->opListArray:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final applyDirectionKeys(Ljava/util/Map;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Map$Entry;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    iget-object v3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->opEventPool:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->opEventPool:Ljava/util/Map;

    .line 53
    .line 54
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->emitKeyboardOpPool()V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method public static synthetic b(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getLastResolutionId$lambda$38(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadEditKeys$lambda$12(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final computeNewSize(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getEntries()Lkotlin/enums/EnumEntries;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move-object v3, v2

    .line 24
    check-cast v3, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    move-object v0, v2

    .line 37
    :cond_2
    check-cast v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 38
    .line 39
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 74
    .line 75
    int-to-float v2, p1

    .line 76
    const/16 v3, 0x9e8

    .line 77
    .line 78
    int-to-float v3, v3

    .line 79
    div-float/2addr v2, v3

    .line 80
    int-to-float v3, v1

    .line 81
    const/16 v4, 0x480

    .line 82
    .line 83
    int-to-float v4, v4

    .line 84
    div-float/2addr v3, v4

    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    const/4 v0, -0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    sget-object v4, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    aget v0, v4, v0

    .line 96
    .line 97
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const v4, 0x7f0711b6

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const v2, 0x7f071311

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const v3, 0x7f0715d7

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    goto :goto_3

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const v4, 0x7f07135b

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const v4, 0x7f071350

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 175
    .line 176
    .line 177
    :goto_2
    move v2, v0

    .line 178
    :goto_3
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    sub-int/2addr p1, v0

    .line 187
    div-int/lit8 v3, p1, 0x2

    .line 188
    .line 189
    sub-int/2addr v1, v2

    .line 190
    div-int/lit8 v4, v1, 0x2

    .line 191
    .line 192
    const/4 v5, 0x0

    .line 193
    invoke-static {v3, v5, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {v4, v5, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-interface {p2, p1, v1, v0, v2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic d(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->deleteCustomOpConfig$lambda$29(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic deleteCustomOpConfig$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    new-instance p2, Lcom/join/kotlin/module/hmcloud/viewmodel/b;

    .line 6
    .line 7
    invoke-direct {p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/b;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->deleteCustomOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final deleteCustomOpConfig$lambda$29(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private final dirsToStickValue(Ljava/util/Set;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Left:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Right:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 35
    .line 36
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    add-float/2addr v0, v3

    .line 45
    :cond_2
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Up:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 46
    .line 47
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const/high16 v2, 0x3f800000    # 1.0f

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const/4 v2, 0x0

    .line 57
    :goto_1
    sget-object v4, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Down:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 58
    .line 59
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    sub-float/2addr v2, v3

    .line 66
    :cond_4
    mul-float p1, v0, v0

    .line 67
    .line 68
    mul-float v3, v2, v2

    .line 69
    .line 70
    add-float/2addr p1, v3

    .line 71
    float-to-double v3, p1

    .line 72
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    double-to-float p1, v3

    .line 77
    cmpl-float v1, p1, v1

    .line 78
    .line 79
    if-lez v1, :cond_5

    .line 80
    .line 81
    div-float/2addr v0, p1

    .line 82
    div-float/2addr v2, p1

    .line 83
    :cond_5
    const/16 p1, 0x7fff

    .line 84
    .line 85
    int-to-float p1, p1

    .line 86
    mul-float v0, v0, p1

    .line 87
    .line 88
    float-to-int v0, v0

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    mul-float v2, v2, p1

    .line 94
    .line 95
    float-to-int p1, v2

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1
.end method

.method public static synthetic e(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/jvm/functions/Function1;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadTemplateKeys$lambda$10(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/jvm/functions/Function1;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final emitKeyboardOpPool()V
    .locals 8

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/HMInputOpData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/HMInputOpData;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->opEventPool:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_5

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    sget-object v4, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMoveUp:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    sget-object v6, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMoveDown:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    filled-new-array {v5, v7}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v5, v3}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    iget-object v5, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyboardMap:Ljava/util/Map;

    .line 67
    .line 68
    sget-object v7, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseWheel:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 69
    .line 70
    invoke-virtual {v7}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    iget-object v5, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyboardMap:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 88
    .line 89
    :goto_1
    if-nez v5, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    new-instance v7, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;

    .line 93
    .line 94
    invoke-direct {v7}, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v5, v7, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputOp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    iput v2, v7, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->value:I

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_2
    invoke-virtual {v6}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_3

    .line 121
    .line 122
    iput v2, v7, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->value:I

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_3
    if-eqz v2, :cond_4

    .line 126
    .line 127
    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputState;->HMOneInputOPData_InputState_OpStateDown:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputState;

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    sget-object v2, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputState;->HMOneInputOPData_InputState_OpStateUp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputState;

    .line 131
    .line 132
    :goto_2
    iput-object v2, v7, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputState:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputState;

    .line 133
    .line 134
    :goto_3
    iget-object v2, v0, Lcom/haima/hmcp/beans/HMInputOpData;->opListArray:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    invoke-direct {p0, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->enqueueOpInput(Lcom/haima/hmcp/beans/HMInputOpData;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->opEventPool:Ljava/util/Map;

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v1, Lcom/join/kotlin/module/hmcloud/viewmodel/f;

    .line 150
    .line 151
    invoke-direct {v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/f;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method private static final emitKeyboardOpPool$lambda$20(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    xor-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    return p0
.end method

.method private final enqueueOpInput(Lcom/haima/hmcp/beans/HMInputOpData;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->appendCurrentTrackballState(Lcom/haima/hmcp/beans/HMInputOpData;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->opInputChannel:Lkotlinx/coroutines/channels/g;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/s;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCustomOpConfig$lambda$26(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic feedback$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameId:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    iget-object p3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->cid:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->feedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final fillOpConfig(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->layoutSize:Lkotlin/Pair;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setLayoutWidth(Ljava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->layoutSize:Lkotlin/Pair;

    .line 13
    .line 14
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setLayoutHeight(Ljava/lang/Integer;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setDensity(Ljava/lang/Float;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->pinchToZoom:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setPinchToZoom(Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyboardInput:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setKeyboardInput(Ljava/lang/Boolean;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->touchMode:Landroidx/lifecycle/MutableLiveData;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setTouchMode(Ljava/lang/Integer;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->mouseSensitivity:Landroidx/lifecycle/MutableLiveData;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Float;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setMouseSensitivity(Ljava/lang/Float;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyAlpha:Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/Float;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setAlpha(Ljava/lang/Float;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyVibrate:Landroidx/lifecycle/MutableLiveData;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setVibrate(Ljava/lang/Boolean;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyHide:Landroidx/lifecycle/MutableLiveData;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setHideKey(Ljava/lang/Boolean;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private final getConfigRoot()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "/hmcloud/"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameId:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method private static final getCustomOpConfig$lambda$26(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ".json"

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private static final getLastResolutionId$lambda$38(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->pictureSettingList:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    check-cast p0, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    check-cast p0, Ljava/lang/Iterable;

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v3, v2

    .line 38
    check-cast v3, Lcom/join/mgps/dto/hmcloud/PictureSetting;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getVip_require()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    xor-int/2addr v3, v0

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v2, v1

    .line 49
    :goto_0
    check-cast v2, Lcom/join/mgps/dto/hmcloud/PictureSetting;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object v2, v1

    .line 53
    :goto_1
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_3
    if-eqz v1, :cond_5

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const/4 v0, 0x0

    .line 69
    :cond_5
    :goto_2
    const-string p0, "3"

    .line 70
    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_6
    invoke-virtual {v2}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-nez v0, :cond_7

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_7
    move-object p0, v0

    .line 82
    :goto_3
    return-object p0
.end method

.method public static synthetic guideNext$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->guideNext(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final invalidateGamepadEvent()V
    .locals 6

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/HMInputOpData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/HMInputOpData;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gamepadEventPool:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Number;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget-object v4, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gamepadEventPool:Ljava/util/Map;

    .line 34
    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_0

    .line 50
    .line 51
    or-int/2addr v2, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;

    .line 54
    .line 55
    invoke-direct {v1}, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;-><init>()V

    .line 56
    .line 57
    .line 58
    sget-object v3, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputButtons:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 59
    .line 60
    iput-object v3, v1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputOp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 61
    .line 62
    iput v2, v1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->value:I

    .line 63
    .line 64
    iget-object v2, v0, Lcom/haima/hmcp/beans/HMInputOpData;->opListArray:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->enqueueOpInput(Lcom/haima/hmcp/beans/HMInputOpData;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private static final loadEditKeys$lambda$12(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getFrom()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setUrl(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->setOpConfig(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->editOpConfig:Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->editKeys:Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getKeys()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    check-cast p1, Ljava/util/Collection;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method private final loadOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, p2, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadOpConfig$1;-><init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method static synthetic loadOpConfig$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final loadTemplateKeys$lambda$10(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/jvm/functions/Function1;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/l0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    new-instance v3, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadTemplateKeys$1$1;

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-direct {v3, p1, p2, p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadTemplateKeys$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/join/mgps/dto/hmcloud/HMOpConfig;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static synthetic onSwitchResolution$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->onSwitchResolution(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final performGamepadKeyClick(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLT:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRT:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gamepadMap:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    instance-of v0, p1, Ljava/lang/Integer;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    check-cast p1, Ljava/lang/Integer;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    :goto_0
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gamepadEventPool:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->invalidateGamepadEvent()V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_2
    return-void

    .line 64
    :cond_3
    :goto_1
    new-instance v0, Lcom/haima/hmcp/beans/HMInputOpData;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/haima/hmcp/beans/HMInputOpData;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;

    .line 70
    .line 71
    invoke-direct {v1}, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gamepadMap:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v2, "null cannot be cast to non-null type com.haima.hmcp.beans.HMInputOpData.HMOneInputOPData_InputOP"

    .line 81
    .line 82
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    check-cast p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 86
    .line 87
    iput-object p1, v1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputOp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 88
    .line 89
    if-eqz p2, :cond_4

    .line 90
    .line 91
    const/16 p1, 0xff

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    const/4 p1, 0x0

    .line 95
    :goto_2
    iput p1, v1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->value:I

    .line 96
    .line 97
    iget-object p1, v0, Lcom/haima/hmcp/beans/HMInputOpData;->opListArray:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->enqueueOpInput(Lcom/haima/hmcp/beans/HMInputOpData;)V

    .line 103
    .line 104
    .line 105
    :goto_3
    return-void
.end method

.method private final readJsonFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance v0, Ljava/net/URL;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->readBytes(Ljava/net/URL;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public static synthetic saveCustomOpConfig$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object v4, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v4, p3

    .line 9
    :goto_0
    and-int/lit8 p3, p6, 0x8

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    move-object v5, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v5, p4

    .line 16
    :goto_1
    and-int/lit8 p3, p6, 0x10

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    move-object v6, v0

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v6, p5

    .line 23
    :goto_2
    move-object v1, p0

    .line 24
    move-object v2, p1

    .line 25
    move v3, p2

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->saveCustomOpConfig(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final setOpConfig(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getPinchToZoom()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->pinchToZoom:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getKeyboardInput()Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyboardInput:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getTouchMode()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->touchMode:Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getMouseSensitivity()Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->mouseSensitivity:Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getAlpha()Ljava/lang/Float;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyAlpha:Landroidx/lifecycle/MutableLiveData;

    .line 88
    .line 89
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getVibrate()Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyVibrate:Landroidx/lifecycle/MutableLiveData;

    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getHideKey()Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyHide:Landroidx/lifecycle/MutableLiveData;

    .line 126
    .line 127
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    return-void
.end method

.method private final trackballDirections(FF)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/Set<",
            "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    cmpg-float v3, p1, v2

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-eqz v3, :cond_2

    .line 12
    .line 13
    cmpg-float v2, p2, v2

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_1
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_2
    float-to-double v0, p2

    .line 27
    float-to-double p1, p1

    .line 28
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    double-to-float p1, p1

    .line 33
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    float-to-double v0, p1

    .line 39
    const-wide v2, -0x400d268380ccde2eL    # -1.1780972450961724

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    cmpl-double p1, v0, v2

    .line 45
    .line 46
    if-ltz p1, :cond_3

    .line 47
    .line 48
    const-wide v2, 0x3ff2d97c7f3321d2L    # 1.1780972450961724

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    cmpg-double p1, v0, v2

    .line 54
    .line 55
    if-gez p1, :cond_3

    .line 56
    .line 57
    sget-object p1, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Right:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 58
    .line 59
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const-wide v2, 0x3fff6a7a2955385eL    # 1.9634954084936207

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    cmpl-double p1, v0, v2

    .line 69
    .line 70
    if-ltz p1, :cond_4

    .line 71
    .line 72
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    cmpg-double p1, v0, v2

    .line 78
    .line 79
    if-lez p1, :cond_5

    .line 80
    .line 81
    :cond_4
    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    cmpl-double p1, v0, v2

    .line 87
    .line 88
    if-ltz p1, :cond_6

    .line 89
    .line 90
    const-wide v2, -0x40009585d6aac7a2L    # -1.9634954084936207

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    cmpg-double p1, v0, v2

    .line 96
    .line 97
    if-gtz p1, :cond_6

    .line 98
    .line 99
    :cond_5
    sget-object p1, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Left:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 100
    .line 101
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_6
    :goto_2
    const-wide v2, 0x3fd921fb54442d18L    # 0.39269908169872414

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    cmpl-double p1, v0, v2

    .line 110
    .line 111
    if-ltz p1, :cond_7

    .line 112
    .line 113
    const-wide v2, 0x4005fdbbe9bba775L    # 2.748893571891069

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    cmpg-double p1, v0, v2

    .line 119
    .line 120
    if-gez p1, :cond_7

    .line 121
    .line 122
    sget-object p1, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Up:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 123
    .line 124
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    const-wide v2, -0x3ffa02441644588bL    # -2.748893571891069

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    cmpl-double p1, v0, v2

    .line 134
    .line 135
    if-ltz p1, :cond_8

    .line 136
    .line 137
    const-wide v2, -0x4026de04abbbd2e8L    # -0.39269908169872414

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    cmpg-double p1, v0, v2

    .line 143
    .line 144
    if-gez p1, :cond_8

    .line 145
    .line 146
    sget-object p1, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Down:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 147
    .line 148
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    :cond_8
    :goto_3
    return-object p2
.end method


# virtual methods
.method public final addCombineKey(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "keys"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$addCombineKey$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$addCombineKey$1;-><init>(Ljava/util/List;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final addKey(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "k"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$addKey$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$addKey$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final calcRemainTime()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->playTime:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->remainTime:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-wide v0
.end method

.method public final collectOpInputData(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/haima/hmcp/beans/HMInputOpData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/l0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lkotlinx/coroutines/z0;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    new-instance v4, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$collectOpInputData$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v4, p0, p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$collectOpInputData$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final deleteCustomOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "success"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$deleteCustomOpConfig$2;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p1, p2, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$deleteCustomOpConfig$2;-><init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final dispatchEvent(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroid/view/KeyEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDeviceManager:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Landroid/view/KeyEvent;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    move v1, p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDeviceManager:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    check-cast p1, Landroid/view/MotionEvent;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    return v1
.end method

.method public final editCustomOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$editCustomOpConfig$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$editCustomOpConfig$1;-><init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final feedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gameId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 18
    .line 19
    .line 20
    const-string v1, "\u5efa\u8bae\u4e0e\u53cd\u9988"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lcom/join/mgps/rpc/h;->x:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "/static/20250908feedback/index.html?gameid="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p2, "&cid="

    .line 44
    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    if-eqz p3, :cond_1

    .line 49
    .line 50
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p2, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 60
    :goto_1
    if-nez p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lcom/haima/hmcp/HmcpManager;->getCloudId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    :goto_2
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string p2, "modGame"

    .line 82
    .line 83
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setExt1(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-virtual {p2, p1, p3, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivityNewTask(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final findResolutionById(Ljava/lang/String;)Lcom/haima/hmcp/beans/ResolutionInfo;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->resolutionList:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/List;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    check-cast v0, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v3, v2

    .line 34
    check-cast v3, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    move-object v1, v2

    .line 45
    :cond_1
    check-cast v1, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 46
    .line 47
    :cond_2
    return-object v1
.end method

.method public final formatRemainTime(J)Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    const-string p1, "0\u79d2"

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const/16 v2, 0xe10

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    div-long v4, p1, v2

    .line 14
    .line 15
    rem-long v2, p1, v2

    .line 16
    .line 17
    const/16 v6, 0x3c

    .line 18
    .line 19
    int-to-long v6, v6

    .line 20
    div-long/2addr v2, v6

    .line 21
    rem-long/2addr p1, v6

    .line 22
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 23
    .line 24
    const/4 v6, 0x3

    .line 25
    new-array v7, v6, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v8, ""

    .line 28
    .line 29
    cmp-long v9, v4, v0

    .line 30
    .line 31
    if-lez v9, :cond_1

    .line 32
    .line 33
    new-instance v9, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v4, 0x65f6

    .line 42
    .line 43
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-object v4, v8

    .line 52
    :goto_0
    const/4 v5, 0x0

    .line 53
    aput-object v4, v7, v5

    .line 54
    .line 55
    cmp-long v4, v2, v0

    .line 56
    .line 57
    if-lez v4, :cond_2

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 v2, 0x5206

    .line 68
    .line 69
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move-object v2, v8

    .line 78
    :goto_1
    const/4 v3, 0x1

    .line 79
    aput-object v2, v7, v3

    .line 80
    .line 81
    cmp-long v2, p1, v0

    .line 82
    .line 83
    if-lez v2, :cond_3

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const/16 p1, 0x79d2

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    :cond_3
    const/4 p1, 0x2

    .line 103
    aput-object v8, v7, p1

    .line 104
    .line 105
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string p2, "%s%s%s"

    .line 110
    .line 111
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string p2, "format(...)"

    .line 116
    .line 117
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    sub-int/2addr p2, v3

    .line 125
    const/4 v0, 0x0

    .line 126
    const/4 v1, 0x0

    .line 127
    :goto_2
    if-gt v0, p2, :cond_9

    .line 128
    .line 129
    if-nez v1, :cond_4

    .line 130
    .line 131
    move v2, v0

    .line 132
    goto :goto_3

    .line 133
    :cond_4
    move v2, p2

    .line 134
    :goto_3
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    const/16 v4, 0x20

    .line 139
    .line 140
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-gtz v2, :cond_5

    .line 145
    .line 146
    const/4 v2, 0x1

    .line 147
    goto :goto_4

    .line 148
    :cond_5
    const/4 v2, 0x0

    .line 149
    :goto_4
    if-nez v1, :cond_7

    .line 150
    .line 151
    if-nez v2, :cond_6

    .line 152
    .line 153
    const/4 v1, 0x1

    .line 154
    goto :goto_2

    .line 155
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_7
    if-nez v2, :cond_8

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_8
    add-int/lit8 p2, p2, -0x1

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_9
    :goto_5
    add-int/2addr p2, v3

    .line 165
    invoke-interface {p1, v0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    return-object p1
.end method

.method public final formatSignTime(JZ)Landroid/text/Spanned;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "#ffFF6C07"

    const-string v1, "getString(...)"

    const/16 v2, 0x21

    if-nez p3, :cond_0

    .line 12
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    const p2, 0x7f12021b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "\u514d\u8d39\u65f6\u957f"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p1

    .line 13
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    add-int/lit8 p3, p2, 0x4

    .line 14
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 16
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 17
    invoke-virtual {v1, v0, p2, p3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1

    :cond_0
    const/16 p3, 0x3c

    int-to-long v3, p3

    .line 18
    div-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long p3, p1, v3

    if-lez p3, :cond_1

    .line 19
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\u5206\u949f"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    move-object v4, p3

    .line 20
    iget-object p3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const v7, 0x7f12021a

    invoke-virtual {p3, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 22
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p3

    .line 23
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 24
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    .line 25
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    .line 27
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 28
    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 29
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 30
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0713ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    .line 31
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const/4 v4, 0x0

    .line 32
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    move-object v3, v0

    .line 33
    invoke-direct/range {v3 .. v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 34
    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p2
.end method

.method public final formatSignTime(J)Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-string p1, "0\u79d2"

    return-object p1

    :cond_0
    const/16 v2, 0x3c

    int-to-long v2, v2

    .line 1
    div-long v4, p1, v2

    .line 2
    rem-long/2addr p1, v2

    .line 3
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, ""

    cmp-long v7, v4, v0

    if-lez v7, :cond_1

    .line 4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\u5206\u949f"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v6

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    cmp-long v4, p1, v0

    if-lez v4, :cond_2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x79d2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    const/4 p1, 0x1

    aput-object v6, v3, p1

    .line 6
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%s%s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-gt v1, v0, :cond_8

    if-nez v2, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    .line 8
    :goto_2
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    .line 9
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gtz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-nez v2, :cond_6

    if-nez v3, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_8
    :goto_4
    add-int/2addr v0, p1

    .line 10
    invoke-interface {p2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getBrightness()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->brightness:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->cid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCloudGamingCfgInfo()Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameCfgInfo:Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentKeyType()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentKeyType:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentKeys()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentKeys:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentOpConfig()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentOpConfig:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentResolution()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentResolution:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCustomOpConfig()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getConfigRoot()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "/op_config/custom"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/join/kotlin/module/hmcloud/viewmodel/a;

    .line 23
    .line 24
    const-string v2, "op_cfg_custom_"

    .line 25
    .line 26
    invoke-direct {v1, v0, v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->maxOpConfigSize:I

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    if-ge v3, v2, :cond_1

    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/io/File;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v6, 0x1

    .line 57
    :try_start_0
    invoke-static {v4, v5, v6, v5}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-class v6, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 66
    .line 67
    invoke-virtual {v5, v4, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 72
    .line 73
    if-eqz v4, :cond_0

    .line 74
    .line 75
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->customOpConfigList:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->customOpConfigList:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method public final getEditKeys()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->editKeys:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEditOpConfig()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->editOpConfig:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameCfgInfoBySrv()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameRatio()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameRatio:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGuideKeyPosition()Lcom/join/mgps/dto/hmcloud/HMKeyItem;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameCfgInfo:Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->getGame_button_tips()Lcom/join/mgps/dto/hmcloud/GameButtonTips;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/GameButtonTips;->getDefault_position()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-class v2, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method

.method public final getGuideState()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/module/hmcloud/bean/GuideState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->guideState:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHandleSupport()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->handleSupport:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInputDevice()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDevice:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInputDeviceSize()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDeviceSize:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInputEventData()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/papa/controller/core/BaseEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputEventData:Lkotlinx/coroutines/flow/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeyAlpha()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyAlpha:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeyHide()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyHide:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeyTypeList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyTypeList:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeyVibrate()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyVibrate:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeyboardInput()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyboardInput:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastResolutionId()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/e;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->lastResolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    :cond_0
    move-object v1, v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isCloudVip()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_3

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-gt v2, v3, :cond_2

    .line 36
    .line 37
    move-object v0, v1

    .line 38
    :cond_2
    return-object v0

    .line 39
    :cond_3
    return-object v1
.end method

.method public final getMaxOpConfigSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->maxOpConfigSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMenuAction()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/hmcloud/HMMenuAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->menuAction:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMouseSensitivity()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->mouseSensitivity:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMute()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->mute:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPictureSettingList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/PictureSetting;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->pictureSettingList:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPinchToZoom()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->pinchToZoom:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlayTime()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->playTime:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaytimeSummary()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->playtimeSummary:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRemainTime()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->remainTime:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResolutionList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->resolutionList:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScreenBrightness(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->brightness:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getScreenBrightness$1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p1, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getScreenBrightness$1;-><init>(Landroid/content/Context;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getShowKeyTips()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->showKeyTips:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartPlayTime()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->startPlayTime:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTemplateList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->templateList:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getToast()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->toast:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTouchMode()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->touchMode:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final guideNext(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->guideState:Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    sget-object v0, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Done;->INSTANCE:Lcom/join/kotlin/module/hmcloud/bean/GuideState$Done;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->guideState:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/kotlin/module/hmcloud/bean/GuideState;

    .line 18
    .line 19
    instance-of v0, p1, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    check-cast p1, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;->getNext()Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->guideState:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    new-instance v1, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 38
    .line 39
    add-int/lit8 v2, p1, 0x1

    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, p1, v2}, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;-><init>(ILjava/lang/Integer;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    nop

    .line 52
    :cond_1
    return-void
.end method

.method public final isAddKeyType(Lcom/join/mgps/dto/hmcloud/HandleCfg;)Z
    .locals 2
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "\u6dfb\u52a0\u65b9\u6848"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getSource()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->None:Lcom/join/mgps/dto/hmcloud/HandleCfgSource;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 40
    :goto_1
    return p1
.end method

.method public final isCloudVip()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final isHmCloudPc()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isHmCloudPc:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isKeyboardEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isHmCloudPc:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->keyboardInput:Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method

.method public final isLatencyOn()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isLatencyOn:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isLowResolution(Ljava/lang/String;)Z
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 15
    :goto_1
    if-eqz v2, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    const-string v2, "x"

    .line 19
    .line 20
    filled-new-array {v2}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x6

    .line 27
    const/4 v8, 0x0

    .line 28
    move-object v3, p1

    .line 29
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x2

    .line 38
    if-ne v2, v3, :cond_7

    .line 39
    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/CharSequence;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const/4 v2, 0x0

    .line 55
    :goto_2
    if-nez v2, :cond_7

    .line 56
    .line 57
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/CharSequence;

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_4

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/4 v2, 0x0

    .line 72
    :goto_3
    if-eqz v2, :cond_5

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const/16 v2, 0x438

    .line 100
    .line 101
    if-ge p1, v2, :cond_6

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    :cond_6
    return v0

    .line 105
    :cond_7
    :goto_4
    return v1
.end method

.method public final loadEditKeys(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cfg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/c;

    .line 7
    .line 8
    invoke-direct {v0, p1, p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/c;-><init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final loadGameLocalConfig()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadGameLocalConfig$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadGameLocalConfig$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final loadLastCommonConfig()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadLastCommonConfig$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadLastCommonConfig$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final loadLastOpConfig()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadLastOpConfig$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadLastOpConfig$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final loadTemplate(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadTemplate$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadTemplate$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final loadTemplateKeys(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "cfg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/d;

    .line 12
    .line 13
    invoke-direct {v0, p0, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/d;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onSwitchResolution(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$onSwitchResolution$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onSwitchResolutionResult(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->resolutionList:Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/List;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    move-object v3, v1

    .line 43
    check-cast v3, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    move-object v1, v2

    .line 55
    :goto_0
    check-cast v1, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 56
    .line 57
    if-nez v1, :cond_5

    .line 58
    .line 59
    return-void

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentResolution:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->name:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->pictureSettingList:Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ljava/util/List;

    .line 74
    .line 75
    if-eqz v3, :cond_c

    .line 76
    .line 77
    check-cast v3, Ljava/lang/Iterable;

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_a

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    move-object v5, v4

    .line 94
    check-cast v5, Lcom/join/mgps/dto/hmcloud/PictureSetting;

    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-nez v6, :cond_9

    .line 105
    .line 106
    iget-object v6, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->resolution:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getResolution()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_8

    .line 117
    .line 118
    iget v6, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->frameRate:I

    .line 119
    .line 120
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getFrame_rate()Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    if-nez v5, :cond_7

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-ne v6, v5, :cond_8

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_8
    :goto_1
    const/4 v5, 0x0

    .line 135
    goto :goto_3

    .line 136
    :cond_9
    :goto_2
    const/4 v5, 0x1

    .line 137
    :goto_3
    if-eqz v5, :cond_6

    .line 138
    .line 139
    move-object v2, v4

    .line 140
    :cond_a
    check-cast v2, Lcom/join/mgps/dto/hmcloud/PictureSetting;

    .line 141
    .line 142
    if-eqz v2, :cond_c

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getShow_frame_mark()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_b

    .line 149
    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const/16 v0, 0x2d

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getFrame_rate()Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const/16 v0, 0x5e27

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    goto :goto_4

    .line 184
    :cond_b
    invoke-virtual {v2}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    :goto_4
    move-object v0, p1

    .line 189
    :cond_c
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->toast:Landroidx/lifecycle/MutableLiveData;

    .line 190
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v2, "\u5206\u8fa8\u7387\u5207\u6362\u6210\u529f\uff0c\u5df2\u5207\u6362\u81f3"

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method public final performClick(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gamepadMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->performGamepadKeyClick(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    if-nez p2, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->opEventPool:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->opEventPool:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->emitKeyboardOpPool()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final performDirection(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dirs"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyDpad:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Dpad:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyWasd:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x3

    .line 48
    const/4 v2, 0x2

    .line 49
    const/4 v3, 0x1

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x4

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    new-array p1, v5, [Lkotlin/Pair;

    .line 55
    .line 56
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Up:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 57
    .line 58
    sget-object v5, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyW:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    aput-object v0, p1, v4

    .line 69
    .line 70
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Down:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 71
    .line 72
    sget-object v4, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyS:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    aput-object v0, p1, v3

    .line 83
    .line 84
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Left:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 85
    .line 86
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyA:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    aput-object v0, p1, v2

    .line 97
    .line 98
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Right:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 99
    .line 100
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->KeyD:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    aput-object v0, p1, v1

    .line 111
    .line 112
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->applyDirectionKeys(Ljava/util/Map;Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_1
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyArrow:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    new-array p1, v5, [Lkotlin/Pair;

    .line 134
    .line 135
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Up:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 136
    .line 137
    sget-object v5, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkUp:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 138
    .line 139
    invoke-virtual {v5}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    aput-object v0, p1, v4

    .line 148
    .line 149
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Down:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 150
    .line 151
    sget-object v4, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkDown:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    aput-object v0, p1, v3

    .line 162
    .line 163
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Left:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 164
    .line 165
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkLeft:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    aput-object v0, p1, v2

    .line 176
    .line 177
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->Right:Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 178
    .line 179
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->VkRight:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    aput-object v0, p1, v1

    .line 190
    .line 191
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->applyDirectionKeys(Ljava/util/Map;Ljava/util/List;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;->getEntries()Lkotlin/enums/EnumEntries;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_5

    .line 212
    .line 213
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;

    .line 218
    .line 219
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->directionMap:Ljava/util/Map;

    .line 220
    .line 221
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Ljava/lang/Integer;

    .line 226
    .line 227
    if-eqz v1, :cond_3

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_4

    .line 238
    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gamepadEventPool:Ljava/util/Map;

    .line 244
    .line 245
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_3

    .line 250
    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gamepadEventPool:Ljava/util/Map;

    .line 256
    .line 257
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 258
    .line 259
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gamepadEventPool:Ljava/util/Map;

    .line 268
    .line 269
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 270
    .line 271
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_5
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->invalidateGamepadEvent()V

    .line 276
    .line 277
    .line 278
    :cond_6
    :goto_2
    return-void
.end method

.method public final performInputEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputEventMapper:Lcom/join/kotlin/module/hmcloud/viewmodel/InputEventMapper;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/InputEventMapper;->performInputEvent(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final performTrackball(Ljava/lang/String;FF)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->trackballDirections(FF)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object p3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->trackballLastDirs:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->trackballLastDirs:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->dirsToStickValue(Ljava/util/Set;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->trackballAxis:Ljava/util/Map;

    .line 53
    .line 54
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/haima/hmcp/beans/HMInputOpData;

    .line 70
    .line 71
    invoke-direct {v0}, Lcom/haima/hmcp/beans/HMInputOpData;-><init>()V

    .line 72
    .line 73
    .line 74
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyL:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    new-instance p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;

    .line 87
    .line 88
    invoke-direct {p1}, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;-><init>()V

    .line 89
    .line 90
    .line 91
    sget-object v1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputThumbLx:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 92
    .line 93
    iput-object v1, p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputOp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 94
    .line 95
    iput p3, p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->value:I

    .line 96
    .line 97
    iget-object p3, v0, Lcom/haima/hmcp/beans/HMInputOpData;->opListArray:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    new-instance p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;

    .line 103
    .line 104
    invoke-direct {p1}, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;-><init>()V

    .line 105
    .line 106
    .line 107
    sget-object p3, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputThumbLy:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 108
    .line 109
    iput-object p3, p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputOp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 110
    .line 111
    iput p2, p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->value:I

    .line 112
    .line 113
    iget-object p2, v0, Lcom/haima/hmcp/beans/HMInputOpData;->opListArray:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyR:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_2

    .line 130
    .line 131
    new-instance p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;

    .line 132
    .line 133
    invoke-direct {p1}, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;-><init>()V

    .line 134
    .line 135
    .line 136
    sget-object v1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputThumbRx:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 137
    .line 138
    iput-object v1, p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputOp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 139
    .line 140
    iput p3, p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->value:I

    .line 141
    .line 142
    iget-object p3, v0, Lcom/haima/hmcp/beans/HMInputOpData;->opListArray:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    new-instance p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;

    .line 148
    .line 149
    invoke-direct {p1}, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;-><init>()V

    .line 150
    .line 151
    .line 152
    sget-object p3, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;->HMOneInputOPData_InputOP_OpXinputThumbRy:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 153
    .line 154
    iput-object p3, p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputOp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 155
    .line 156
    iput p2, p1, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->value:I

    .line 157
    .line 158
    iget-object p2, v0, Lcom/haima/hmcp/beans/HMInputOpData;->opListArray:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    :goto_0
    invoke-direct {p0, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->enqueueOpInput(Lcom/haima/hmcp/beans/HMInputOpData;)V

    .line 164
    .line 165
    .line 166
    :cond_2
    return-void
.end method

.method public final refreshKeyboardTypeList()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$refreshKeyboardTypeList$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$refreshKeyboardTypeList$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final refreshKeys()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$refreshKeys$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$refreshKeys$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final requestPlaytimeSummary()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$requestPlaytimeSummary$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$requestPlaytimeSummary$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final resetEdit(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cfg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadEditKeys(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final saveCustomOpConfig(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    move-object v1, v0

    .line 10
    move-object v2, p0

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p1

    .line 13
    move v5, p2

    .line 14
    move-object v6, p4

    .line 15
    move-object v7, p5

    .line 16
    invoke-direct/range {v1 .. v8}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveCustomOpConfig$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final saveLastCommonConfig()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveLastCommonConfig$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveLastCommonConfig$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final saveLastOpConfig()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveLastOpConfig$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$saveLastOpConfig$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setCid(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->cid:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setCurrentKeys(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentKeys:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setCurrentOpConfig(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentOpConfig:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setEditKeys(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->editKeys:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setEditOpConfig(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->editOpConfig:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setGameId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setGuideState(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/module/hmcloud/bean/GuideState;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->guideState:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setInputDevice(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDevice:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setInputDeviceSize(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDeviceSize:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setOpLayoutSize(II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$setOpLayoutSize$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$setOpLayoutSize$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;IILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setRatio(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup$LayoutParams;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "lp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameRatio:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, -0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 22
    .line 23
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string v1, "16:9"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 45
    .line 46
    int-to-float v0, v0

    .line 47
    const v1, 0x3fe38e39

    .line 48
    .line 49
    .line 50
    mul-float v0, v0, v1

    .line 51
    .line 52
    float-to-int v0, v0

    .line 53
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    .line 55
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public final setShowKeyTips(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->showKeyTips:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setTouchMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->touchMode:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final startInputMonitor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDeviceManager:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDeviceManager:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 11
    .line 12
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDeviceManager:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-instance v1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$startInputMonitor$2;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$startInputMonitor$2;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->setOnInputDeviceListener(Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDeviceManager:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->context:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->startMonitor(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final startVibrate()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$startVibrate$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$startVibrate$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final stopInputMonitor()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDeviceManager:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->stopMonitor()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final switchOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->editOpConfig:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentKeyType:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentOpConfig:Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->currentKeys:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isAddKeyType(Lcom/join/mgps/dto/hmcloud/HandleCfg;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$switchOpConfig$1;

    .line 37
    .line 38
    invoke-direct {v0, p0, p1, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$switchOpConfig$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final updateResolutionInfo()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->resolutionList:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameCfgInfo:Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->resolutionList:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/List;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Iterable;

    .line 30
    .line 31
    new-instance v3, Ljava/util/ArrayList;

    .line 32
    .line 33
    const/16 v4, 0xa

    .line 34
    .line 35
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 57
    .line 58
    iget-object v5, v4, Lcom/haima/hmcp/beans/ResolutionInfo;->resolution:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, v5}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isLowResolution(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    new-instance v6, Lcom/join/mgps/dto/hmcloud/PictureSetting;

    .line 65
    .line 66
    invoke-direct {v6}, Lcom/join/mgps/dto/hmcloud/PictureSetting;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v7, v4, Lcom/haima/hmcp/beans/ResolutionInfo;->name:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setName(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v7, v4, Lcom/haima/hmcp/beans/ResolutionInfo;->resolution:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setResolution(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget v7, v4, Lcom/haima/hmcp/beans/ResolutionInfo;->frameRate:I

    .line 80
    .line 81
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setFrame_rate(Ljava/lang/Integer;)V

    .line 86
    .line 87
    .line 88
    iget-object v7, v4, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setId(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    xor-int/lit8 v7, v5, 0x1

    .line 94
    .line 95
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setShow_frame_mark(Z)V

    .line 96
    .line 97
    .line 98
    if-nez v5, :cond_1

    .line 99
    .line 100
    iget v4, v4, Lcom/haima/hmcp/beans/ResolutionInfo;->frameRate:I

    .line 101
    .line 102
    const/16 v5, 0x1e

    .line 103
    .line 104
    if-le v4, v5, :cond_1

    .line 105
    .line 106
    const/4 v4, 0x1

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const/4 v4, 0x0

    .line 109
    :goto_1
    invoke-virtual {v6, v4}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setVip_require(Z)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->pictureSettingList:Landroidx/lifecycle/MutableLiveData;

    .line 117
    .line 118
    if-nez v3, :cond_3

    .line 119
    .line 120
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    :cond_3
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameCfgInfoBySrv()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    iget-object v4, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->gameCfgInfo:Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;

    .line 137
    .line 138
    if-eqz v4, :cond_b

    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->getPicture_setting()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    if-eqz v4, :cond_b

    .line 145
    .line 146
    check-cast v4, Ljava/lang/Iterable;

    .line 147
    .line 148
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_b

    .line 157
    .line 158
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    check-cast v5, Lcom/join/mgps/dto/hmcloud/PictureSetting;

    .line 163
    .line 164
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getResolution()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    const-string v7, "*"

    .line 169
    .line 170
    const-string v8, "x"

    .line 171
    .line 172
    const/4 v9, 0x0

    .line 173
    const/4 v10, 0x4

    .line 174
    const/4 v11, 0x0

    .line 175
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setResolution(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v6, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->resolutionList:Landroidx/lifecycle/MutableLiveData;

    .line 183
    .line 184
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    check-cast v6, Ljava/util/List;

    .line 189
    .line 190
    if-eqz v6, :cond_a

    .line 191
    .line 192
    check-cast v6, Ljava/lang/Iterable;

    .line 193
    .line 194
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    if-eqz v7, :cond_9

    .line 203
    .line 204
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    move-object v8, v7

    .line 209
    check-cast v8, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 210
    .line 211
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getResolution()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    iget-object v10, v8, Lcom/haima/hmcp/beans/ResolutionInfo;->resolution:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-eqz v9, :cond_8

    .line 222
    .line 223
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getFrame_rate()Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    iget v8, v8, Lcom/haima/hmcp/beans/ResolutionInfo;->frameRate:I

    .line 228
    .line 229
    if-nez v9, :cond_7

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-ne v9, v8, :cond_8

    .line 237
    .line 238
    const/4 v8, 0x1

    .line 239
    goto :goto_4

    .line 240
    :cond_8
    :goto_3
    const/4 v8, 0x0

    .line 241
    :goto_4
    if-eqz v8, :cond_6

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_9
    move-object v7, v3

    .line 245
    :goto_5
    check-cast v7, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_a
    move-object v7, v3

    .line 249
    :goto_6
    if-eqz v7, :cond_5

    .line 250
    .line 251
    new-instance v6, Lcom/join/mgps/dto/hmcloud/PictureSetting;

    .line 252
    .line 253
    invoke-direct {v6}, Lcom/join/mgps/dto/hmcloud/PictureSetting;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    invoke-virtual {v6, v8}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setName(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getResolution()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    invoke-virtual {v6, v8}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setResolution(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getFrame_rate()Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-virtual {v6, v8}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setFrame_rate(Ljava/lang/Integer;)V

    .line 275
    .line 276
    .line 277
    iget-object v7, v7, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setId(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getVip_require()Z

    .line 283
    .line 284
    .line 285
    move-result v7

    .line 286
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setVip_require(Z)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->getShow_frame_mark()Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    invoke-virtual {v6, v5}, Lcom/join/mgps/dto/hmcloud/PictureSetting;->setShow_frame_mark(Z)V

    .line 294
    .line 295
    .line 296
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    goto/16 :goto_2

    .line 300
    .line 301
    :cond_b
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->pictureSettingList:Landroidx/lifecycle/MutableLiveData;

    .line 302
    .line 303
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    return-void
.end method

.method public final useInputDevice()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->inputDeviceSize:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-lez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->handleSupport:Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_1
    return v1
.end method
