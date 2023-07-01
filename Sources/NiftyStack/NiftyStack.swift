// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import SwiftUI

public struct NiftyStack<Content>: View where Content : View {

  public let content: () -> Content

  private let navigationBarHidden: Bool

  public init(content: @escaping () -> Content) {
    self.init(navigationBarHidden: false, content: content)
  }

  public init(navigationBarHidden: Bool, content: @escaping () -> Content) {
    self.content = content
    self.navigationBarHidden = navigationBarHidden
  }

  public var body: some View {
    if #available(iOS 16.0, *) {
      NavigationStack { navContent }
    } else {
      NavigationView { navContent }
        .navigationViewStyle(StackNavigationViewStyle())
    }
  }

  @ViewBuilder
  private var navContent: some View {
    content()
      .navigationBarHidden(navigationBarHidden)
  }

}
